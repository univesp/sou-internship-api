class Api::V1::InternshipProcessesController < ApplicationController
    
  def index
    processes = InternshipProcess.order('created_at ASC')
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

  def show_processes_by_student
    internshipProcess = InternshipProcess.where(student_id: params[:student_id]).paginate(:page => params[:page], :per_page => 5)

    render :json => internshipProcess, 
      :include => {
        :internship_process_type => {:only => :name}, 
        :organization => {:only => :organization_name},
        :employee => {:only => :name}
      }, status: :ok
  end
  
  def show_documents_and_organization_by_process_id
    process = InternshipProcess.find(params[:id])
    organization = Organization.where(:id => process.organization_id)
    document = InternshipDocument.where(:internship_process_id => process.id)

    render json: {process:process,organization:organization,document:document},status: :ok
  end

  def show_student
    student = Student.order('created_at ASC').paginate(:page => params[:page], :per_page => 15)
    render json: {student:student}, status: :ok
  end

  private

    def process_params
      params.require(:internship_process).permit(
        :student_id,
        :user_id,
        :organization_id,
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
