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
    student = Student.select(:name, :last_name, :id, :birth_date, :course_class_id).find(params[:id])
    courseClass = CourseClass.where(:id => student.course_class_id)
    course = Course.where(:id => courseClass[0].course_id)
    studentIdentify = StudentXIdentify.where(:student_id => student.id)
    identity = Identity.select(:number).where(:id => studentIdentify[0].identity_id)
    render json: {student:student,course:course,identity:identity}, status: :ok
  end
end
