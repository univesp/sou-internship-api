class Api::V1::InternshipProcessesController < ApplicationController
    
  def index
    processes = InternshipProcess.order('created_at ASC');
    render json: {processes:processes},status: :ok
  end

  def show 
    process = InternshipProcess.find(params[:id])
    render json: {process:process},status: :ok
  end

  def create
    process = InternshipProcess.new(process_params)

    if process.save
      render json: {process:process},status: :ok
    else
      render json: {process:process.errors},status: :unprocessable_entity
    end
  end

  def update
    process = InternshipProcess.find(params[:id])
    
    if process.update(process_params)
      render json: {process:process},status: :ok
    else
      render json: {process:process.errors},status: :unprocessable_entity
    end
  end

  def destroy
    process = InternshipProcess.find(params[:id])
    process.destroy
    render json: {process:process},status: :ok
  end

  private

    def process_params
      params.require(:internship_process).permit(
        :student_id,
        :user_id,
        :organizations_id,
        :internship_process_type_id,
        :internship_responsible,
        :phone1,
        :phone2,
        :email_internship_responsible,
        :accept_terms,
        :approved_hours,
        :status,
        :justification_rejection
      )
    end
end
