class Api::V1::InternshipProcessesController < ApplicationController

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
    @count = [internshipProcess.count()]
    internshipProcess += @count
    
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
    student = Student.select(:id, :course_class_id, :name,:last_name, :gender, :birth_date, :cpf, :academic_register, :address_id, :city_id).where(:id => process.student_id) 
    address = Address.select(:id, :neighborhood, :street, :street_number, :zipcode, :street_complement, :state).where(:id => student[0].address_id) 
    mail = StudentXEmail.where(:student_id => process.student_id)
    email = Email.select(:id,:email).where(:id => mail[0].email_id)
    klass = CourseClass.select(:id, :year_entry, :semester, :course_id).where(:id => student[0].course_class_id)
    course = Course.where(:id => klass[0].course_id)
    
    render json: {process:process,organization:organization,document:document,student:student,course:course,address:address,email:email},status: :ok
  end

  def show_process_with_student_and_course
    @process = []
    @students = []
    internshipProcess = InternshipProcess.all().paginate(:page => params[:page], :per_page => 10)
    student = Student.select(:id, :course_class_id, :name, :academic_register, :gender)
    klass = CourseClass.select(:id, :year_entry, :semester, :course_id)
    course = Course.select(:id, :name)
    internshipProcess.each do |process|
      @process +=  [process]
      student = Student.select(:id, :course_class_id, :name, :academic_register, :gender).where(:id => process.student_id)
      student.each do |student|
        klass = CourseClass.select(:id, :year_entry, :semester, :course_id).where(:id => student.course_class_id)
        klass.each do |klass|
          course = Course.select(:id, :name).where(:id => klass.course_id)
          @process += [student:student]
          @process += [courseClass:klass]
          @process += [course:course]
        end
      end
    end
    count = {countProcess:internshipProcess.count()}

    render json: {process:@process,count:count}, status: :ok
  end

  def show_process_by_search
    @process = []
    internshipProcess = InternshipProcess.all().paginate(:page => params[:page], :per_page => 10)
    student = Student.select(:id, :course_class_id, :name, :academic_register, :gender)
    klass = CourseClass.select(:id, :year_entry, :semester, :course_id)
    course = Course.select(:id, :name)
    internshipProcess.each do |process|
      @process +=  [process]
      student = Student.select(:id, :course_class_id, :name, :academic_register, :gender).where(:id => process.student_id)
      @process += [student:student]
    end
    count = {countProcess:internshipProcess.count()}

    render json: {process:@process,count:count}, status: :ok
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
        :justification_rejection,
        :address,
        :address_id,
        :email
      )
    end
end
