class Api::V1::StudentController < ApplicationController

  # "student/:id/processes", to "student#processes"
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

  # "student/:id", to "student#student_data"
  def student_data
    @student_data = {
      "studentData": [ 
        {
          "firstName": "Alice",
          "lastName": "Pereira Rodrigues",
          "assumedName": "",
          "birthDate": "1989-01-06",
          "gender": "F", 
          "countryBirth": "Brasil",
          "nationality": "Brasileira",
          "race": 0, 
          "marital": 2, 
          "bloodType": 2, 
          "organDonor": true, 
          "cellphone": "35992755126",
          "personalEmail": "alicepereirarodrigues@outlook.com",
          "professionalEmail": "alice.rodrigues@jourrapide.com",
          "documents": {
            "rg": {
              "number": "273044576",
              "issuer": "SSP"
            },
            "cpf": "17143053929",
            "electoralCard": "", 
            "certificateReservist": ""
          }
        }
      ]
    }
    render json: @student_data
  end
  
end
