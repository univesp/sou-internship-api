class Api::V1::InternshipProcessController < ApplicationController
    
  def index
    processes = InternshipProcess.order('created_at DESC');
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
        :organization_type_id,
        :document_number,
        :organization_name,
        :phone1,
        :phone2,
        :fax,
        :street,
        :street_number,
        :city,
        :state,
        :zipcode
      )
    end
end
