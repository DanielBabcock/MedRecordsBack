class SurgicalProceduresController < ApplicationController
  before_action :set_surgical_procedure, only: [:show, :update, :destroy]

  # GET /surgical_procedures
  def index
    @surgical_procedures = SurgicalProcedure.all

    render json: @surgical_procedures
  end

  # GET /surgical_procedures/1
  def show
    render json: @surgical_procedure
  end

  # POST /surgical_procedures
  def create
    @surgical_procedure = SurgicalProcedure.new(surgical_procedure_params)

    if @surgical_procedure.save
      render json: @surgical_procedure, status: :created, location: @surgical_procedure
    else
      render json: @surgical_procedure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /surgical_procedures/1
  def update
    if @surgical_procedure.update(surgical_procedure_params)
      render json: @surgical_procedure
    else
      render json: @surgical_procedure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /surgical_procedures/1
  def destroy
    @surgical_procedure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgical_procedure
      @surgical_procedure = SurgicalProcedure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surgical_procedure_params
      params.require(:surgical_procedure).permit(:patient_id, :procedure_name, :care_giver_name, :care_giver_title, :hospital, :hospital_phone, :hospital_address, :medication_name, :medication_purpose, :medication_dose, :medication_frequency, :medication_start_date, :medication_end_date, :notes)
    end
end
