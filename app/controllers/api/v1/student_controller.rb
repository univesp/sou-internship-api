class Api::V1::StudentController < ApplicationController

  # "student/:id/processes", to "student#processes" Mock
  # 0 = 'Em análise', 1 = 'Deferido',  2 = 'Indeferido' 3 = 'Pendente' (references for status)
  def processes
		@processes = {
			"processes": [
        {
          "id": 1,
          "type": 0,
          "status": 0,
          "created_at": "2018-12-17",
          "student_id": 1,
          "responsible_id": 1,
          "grantor_id": 1,
          "advisor_id": 1,
          "professor_id": 1,
          "moderator_name": "Marcos Ferreira Almeida"
        },
        {
          "id": 2,
          "type": 0,
          "status": 1,
          "created_at": "2018-12-20",
          "student_id": 1,
          "responsible_id": 1,
          "grantor_id": 1,
          "advisor_id": 1,
          "professor_id": 1,
          "moderator_name": "Tânia Cunha Castro"
        }
			]
    }
    render json: @processes

  end

  def show
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
end
