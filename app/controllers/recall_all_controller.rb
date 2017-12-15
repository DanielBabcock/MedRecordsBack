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



    
    
    render json: @family_histories, @major_illnesses, @medications, @patient_infos, @surgical_procedures, @vaccinations 

  end

  # GET /all \Singular form\
  def show
    render json: @family_history, @major_illnesses, @medications, @patient_infos, @surgical_procedures, @vaccinations 
  end

#   # POST /all
#   def create
#     @family_history = FamilyHistory.new(family_history_params)

#     if @family_history.save
#       render json: @family_history, status: :created, location: @family_history
#     else
#       render json: @family_history.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /all
#   def update
#     if @family_history.update(family_history_params)
#       render json: @family_history
#     else
#       render json: @family_history.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /all
#   def destroy
#     @family_history.destroy
#   end

    
end
