class MajorIllnessesController < ApplicationController
  before_action :set_major_illness, only: [:show, :update, :destroy]

  # GET /major_illnesses
  def index
    @major_illnesses = MajorIllness.all

    render json: @major_illnesses
  end

  # GET /major_illnesses/1
  def show
    render json: @major_illness
  end

  # POST /major_illnesses
  def create
    @major_illness = MajorIllness.new(major_illness_params)

    if @major_illness.save
      render json: @major_illness, status: :created, location: @major_illness
    else
      render json: @major_illness.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /major_illnesses/1
  def update
    if @major_illness.update(major_illness_params)
      render json: @major_illness
    else
      render json: @major_illness.errors, status: :unprocessable_entity
    end
  end

  # DELETE /major_illnesses/1
  def destroy
    @major_illness.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_major_illness
      @major_illness = MajorIllness.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def major_illness_params
      params.require(:major_illness).permit(:patient_id, :illness_name, :illness_start_date, :illness_end_date, :care_giver_name, :illness_notes, :medication_name, :medication_purpose, :medication_dose, :medication_frequency, :medication_start_date, :medication_end_date, :treatment_notes)
    end
end
