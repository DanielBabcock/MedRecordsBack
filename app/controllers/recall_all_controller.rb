# class RecallAllController < ApplicationController

#      # GET /all
#   def index
#     @family_histories = FamilyHistory.all
#     # @items = Item.all
#     @major_illnesses = MajorIllness.all
    
    
#     render json: @family_histories, @major_illnesses

#   end

#   # GET /all \Singular form\
#   def show
#     render json: @family_history, @major_illnesses
#   end

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

    
# end
