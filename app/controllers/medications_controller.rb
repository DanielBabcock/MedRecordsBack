class MedicationsController < ApplicationController
  before_action :set_medication, only: [:show, :update, :destroy]

  # GET /medications
  def index
    @medications = Medication.all
    

    render json: @medications
  end

  # GET /medications/1
  def show
    render json: @medication
  end

  # POST /medications
  def create
    @medication = Medication.new(medication_params)
    @medication.user_id = @current_user.id

    if @medication.save
      render json: @medication, status: :created, location: @medication
    else
      render json: @medication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medications/1
  def update
    if @medication.update(medication_params)
      render json: @medication
    else
      render json: @medication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medications/1
  def destroy
    @medication.user_id = @current_user.id
    @medication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medication
      @medication = Medication.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medication_params
      params.require(:medication).permit( 
        :user_id, :medication_name, :current_use, :mediation_purpose,:medication_dose_amount, :medication_dose_frequency, :medication_start_date, :medication_end_date, :care_giver, :care_giver_title)
    end
end
