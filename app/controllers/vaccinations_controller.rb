class VaccinationsController < ApplicationController
  before_action :set_vaccination, only: [:show, :update, :destroy]
  #, :edit

  # GET /vaccinations
  def index
    @vaccinations = Vaccination.all

    render json: @vaccinations
  end

  # GET /vaccinations/1
  def show
    render json: @vaccination
  end

  # POST /vaccinations
  def create
    @vaccination = Vaccination.new(vaccination_params)
    @vaccination.user_id = @current_user.id


    if @vaccination.save
      render json: @vaccination, status: :created, location: @vaccination
    else
      render json: @vaccination.errors, status: :unprocessable_entity
    end
  end
# 
  # PATCH/PUT /vaccinations/1
  def update
    @vaccination.user_id = @current_user.id
    @vaccination= vaccination.find(params[:id])

    if @vaccination.update(vaccination_params)
      render json: @vaccination
    else
      render json: @vaccination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vaccinations/1
  def destroy
    @vaccination.user_id = @current_user.id
    @vaccination.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vaccination
      @vaccination = Vaccination.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vaccination_params
      params.require(:vaccination).permit(:user_id, :vaccine_name, :vaccination_date, :vaccine_expiration)
    end
end
