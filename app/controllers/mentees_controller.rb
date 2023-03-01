class MenteesController < ApplicationController

 # Render all Mentees
 def index
  # INCOMPLETE - Only Amin Role should have access
  mentees = Mentee.all
  render json mentees, status: :ok
 end

 # Render specific user profile
 def show
  # INCOMPLETE - Only logged in Mentee userType should have Access
  mentee = Mentee.find_by(email: params[:email])
  if mentee
   render json: mentee, status: :ok   
  end
 end

 # Allows a new user to craete an account
 def create
  mentee = Mentee.create!(mentee_params)
  if mentee
   render json: mentee, status: :created
  end
 end

 # User self destruct his/her account
 def destroy
  # INCOMPLETE - Check for user session before destroy
  mentee = Mentee.find_by(email: params[:email])
  if mentee
   mentee.destroy
   head :no_content
  end
 end

end
