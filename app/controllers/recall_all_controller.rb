class RecallAllController < ApplicationController
    before_action :set_surgical_procedure, :set_vaccination, :set_family_history, :set_major_illness, :set_medication, :set_patient_info, only: [:show]

     # GET /all
  def index
    @family_histories = FamilyHistory.all
    @major_illnesses = MajorIllness.all
    @medications = Medication.all
    @patient_infos = PatientInfo.all
    @surgical_procedures = SurgicalProcedure.all
    @vaccinations = Vaccination.all
        # renders
    render json: @family_histories, @major_illnesses, @medications, @patient_infos, @surgical_procedures, @vaccinations 

  end

  # GET /all \Singular form\
  def show
    render json: @family_history, @major_illnesses, @medications, @patient_infos, @surgical_procedures, @vaccinations 
  end
    
end
