class SenioritiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid

 def index
  render json: Seniority.all, status: :ok
 end

 def create
  level = Seniority.create!(level: params[:level])
  render json: level, status: :created
 end

 def show
  level = Seniority.find(params[:id])
  render json: level, status: :ok
 end

 def destroy
  level = Seniority.find(params[:id])
  level.destroy
  head :no_content
 end

 private

 def render_record_not_found
  render json: { error: "Seniority level not found" }
 end

 def render_record_invalid(e)
  render json: { errors: e.record.errors.full_messages }
 end

end
