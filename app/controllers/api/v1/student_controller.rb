class Api::V1::StudentController < ApplicationController

  # "aluno/:id/processos", to "student#processes"
  # 0 = 'Em análise', 1 = 'Deferido',  2 = 'Indeferido' 3 = 'Pendente' (references for status)
  def processes
		@processes = {
			[
			  {
          "id": 1,
          "type": 0,
          "status": 0,
          "created_at": "2018-12-17",
          "responsible": {
            "name": "Tânia Cunha Castro"
          },
          "grantor": {
            "name": "Universidade de São Paulo"
          }
        }, 
        {
          "id": 2,
          "type": 0,
          "status": 1,
          "created_at": "2018-12-17",
          "responsible": {
            "name": "Marcos Ferreira Almeida"
          },
          "grantor": {
            "name": "Universidade de São Paulo"
          }
        }
			]
    }
    render json: @processes

  end

  # "student/:id", to "student#student_data"
  def student_data
    @student_data = { 
      [ 
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
              "issuer": "Secretaria de Segurança Pública" 
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
