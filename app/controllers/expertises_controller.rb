class ExpertisesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

 # List of all experise fields
 def index
  render json: Expertise.all, status: :ok
 end

 # Creates a new expertise
 def create
  # INCOMPLETE: Must be authorized
  render json: Expertise.create!(field: params[:field]), status: :created
 end

 # Shows info on a singular expertise
 def show
  render json: Expertise.find(params[:id]), status: :ok  
 end

 # Deletes an expertise category
 def destroy
  field = Expertise.find(params[:id])
  field.destroy
  head :no_content
 end

 private

 def render_record_not_found
  render json: { error: "Expertise category not found" }, status: :not_found
 end

 def render_record_invalid(e)
  render json: { errors: e.record.errors.full_messages }
 end

end
