class ExpertisesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

 # List of all experise fields
 def index
  render json: Expertise.all, status: :ok
 end

 # Ctrate a new expertise
 def create
  # INCOMPLETE: Must be authorized
  render json: Expertise.create!(field: params[:field]), status: :created
 end

 # Shows info on a singular expertise
 def show
  render json: Expertise.find(params[:id]), status: :ok  
 end

 def destroy
  field = Field.find(params[:id])
  field.destroy
  head :no_conent   
 end

 private

 def render_record_not_found(e)
  render json: { error: e.errors.full_meassages }, status: :not_found
 end

end
