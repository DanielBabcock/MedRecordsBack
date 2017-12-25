class FamilyHistoriesController < ApplicationController
# Shouldn't this have an ( , :edit ) ?
  before_action :set_family_history, only: [:show, :update, :destroy]


  # GET /family_histories
  def index
    @family_histories = FamilyHistory.all

    render json: @family_histories
  end

  # GET /family_histories/1
  def show
    render json: @family_history
  end

  # POST /family_histories
  def create
    @family_history = FamilyHistory.new(family_history_params)
    @family_history.user_id = @current_user.id

    if @family_history.save
      render json: @family_history, status: :created, location: @family_history
    else
      render json: @family_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /family_histories/1
  def update
    if @family_history.update(family_history_params)
      render json: @family_history
    else
      render json: @family_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /family_histories/1
  def destroy
    # record = family_histories.find(params[:id])
    @family_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_history
      @family_history = FamilyHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def family_history_params
      params.require(:family_history).permit(:patient_id, :family_member_relation, :prion_disease, :cardiac_disease, :cardiac_event, :cardiac_event_ages, :cardiac_death, 
      :cardiac_death_age, :diabetes, :diabetes_type, :organ_diseases, :organ_disease_name, :respiratory_disease, :respiratory_disease_names, :cancer, :cancer_death, :cancer_types, :cancer_event_age, :high_blood_pressure, :stroke, :alzheimers_or_dementia, :osteoporosis, :bleeding_disorder)
    end
end
