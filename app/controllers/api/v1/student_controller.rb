class Api::V1::StudentController < ApplicationController
  def show_student_organization_process
    process = InternshipProcess.find(params[:id])
    student = Student.select(:city_id,:address_id,:countriy_id,:name, :last_name, :id, :birth_date, :course_class_id, :assumed_name, :cpf).where(:id => process.student_id)
    courseClass = CourseClass.where(:id => student[0].course_class_id)
    parents = StudentXParentage.where(:student_id => student[0].id)
    mother = Parentage.select(:name, :id).where(:id => parents[0].parentage_id)
    father = Parentage.select(:name, :id).where(:id => parents[1].parentage_id)
    country = Country.select(:portuguese_name, :id).where(:id => student[0].countriy_id)
    course = Course.where(:id => courseClass[0].course_id)
    studentIdentify = StudentXIdentify.where(:student_id => student[0].id)
    identity = Identity.select(:number, :issuing_entity_id,:id).where(:id => studentIdentify[0].identity_id)
    identityEmissor = IssuingEntity.select(:name,:id).where(:id => identity[0].issuing_entity_id)
    address = Address.where(:id => student[0].address_id)
    phone = StudentXTelephone.where(:student_id => student[0].id)
    telephone = Telephone.select(:telephones,:ddd,:id).where(:id => phone[0].telephone_id)
    mail = StudentXEmail.where(:student_id => student[0].id)
    email = Email.select(:id,:email).where(:id => mail[0].email_id)
    city = City.select(:name,:id).where(:id => student[0].city_id)
    organization = Organization.where(:id => process.organization_id)
    document = InternshipDocument.where(:internship_process_id => process.id)
    render json: {process:process,course:course,student:student,address:address,identity:identity,identityEmissor:identityEmissor,mother:mother,father:father,country:country,city:city,telephone:telephone, email:email, organization:organization, document:document}, status: :ok
  end

  def show_student
    student = Student.select(:city_id,:address_id,:countriy_id,:name, :last_name, :id, :birth_date, :course_class_id, :assumed_name, :cpf).find(params[:id])
    courseClass = CourseClass.where(:id => student.course_class_id)
    parents = StudentXParentage.where(:student_id => student.id)
    mother = Parentage.select(:name, :id).where(:id => parents[0].parentage_id)
    father = Parentage.select(:name, :id).where(:id => parents[1].parentage_id)
    country = Country.select(:portuguese_name, :id).where(:id => student.countriy_id)
    course = Course.where(:id => courseClass[0].course_id)
    studentIdentify = StudentXIdentify.where(:student_id => student.id)
    identity = Identity.select(:number, :issuing_entity_id,:id).where(:id => studentIdentify[0].identity_id)
    identityEmissor = IssuingEntity.select(:name,:id).where(:id => identity[0].issuing_entity_id)
    address = Address.where(:id => student.address_id)
    phone = StudentXTelephone.where(:student_id => student.id)
    telephone = Telephone.select(:telephones,:ddd,:id).where(:id => phone[0].telephone_id)
    mail = StudentXEmail.where(:student_id => student.id)
    email = Email.select(:id,:email).where(:id => mail[0].email_id)
    city = City.select(:name,:id).where(:id => student.city_id)
    render json: {course:course,student:student,address:address,identity:identity,identityEmissor:identityEmissor,mother:mother,father:father,country:country,city:city,telephone:telephone, email:email}, status: :ok
  end

  def show
    student = Student.order('created_at ASC').paginate(:page => params[:page], :per_page => 15)
    count = student.count()
    render json: {student:student, count:count}, status: :ok
  end
end
