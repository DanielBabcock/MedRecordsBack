class PatientInfosController < ApplicationController
  before_action :set_patient_info, only: [:show, :update, :destroy]

  # GET /patient_infos
  def index
    @patient_infos = PatientInfo.all

    render json: @patient_infos
  end

  # GET /patient_infos/1
  def show
    render json: @patient_info
  end

  # POST /patient_infos
  def create
    @patient_info = PatientInfo.new(patient_info_params)
    @patient_info.user_id = @current_user.id

    if @patient_info.save
      render json: @patient_info, status: :created, location: @patient_info
    else
      render json: @patient_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patient_infos/1
  def update
    if @patient_info.update(patient_info_params)
      render json: @patient_info
    else
      render json: @patient_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patient_infos/1
  def destroy
    
    @patient_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_info
      @patient_info = PatientInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def patient_info_params
      params.require(:patient_info).permit(
        :user_id, :name_first, :name_last, :patient_sex, :race, :height, :height_in_inches, :weight, :weight_in_pounds, :date_birth, :address, :phone_number, :emergency_contact_name_first, :emergency_contact_name_last, :emergency_contact_phone_number, :emergency_contact_address, :eligible_blood_donor)
    end
end
