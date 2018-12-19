class Api::V1::ProcessController < ApplicationController
  def index
    @processes = {
			"processes": [
			  {
          "id": 1,
          "avatar": "",
          "name": "Mario Inacio da Fonseca",
          "course": "Engenharia da Computação",
          "startSem": "2019.1",
          "endSem": "2023.1",
          "grantorId": 1,
          "responsibleId": 1,
          "professorId": 1,
          "status": 0
        }, 
        {
          "id": 2,
          "name": "Marcos Soares Campos",
          "course": "Engenharia de Produção",
          "startSem": "2019.1",
          "endSem": "2023.1",
          "grantorId": 1,
          "responsibleId": 1,
          "professorId": 1,
          "status": 0
        },
        {
          "id": 3,
          "name": "Antonio Bandeira Nunes",
          "course": "Licenciatura em Física",
          "startSem": "2019.1",
          "endSem": "2023.1",
          "grantorId": 1,
          "responsibleId": 1,
          "professorId": 1,
          "status": 0
        },
        {
          "id": 4,
          "name": "Jack Bauer",
          "course": "Engenharia da Computação",
          "startSem": "2019.1",
          "endSem": "2023.1",
          "grantorId": 1,
          "responsibleId": 1,
          "professorId": 1,
          "status": 0
        }
			]
    }
    render json: @processes
  end
  def show
    @process = {
			"process": [
			  {
          "id": 1,
          "avatar": "",
          "name": "Mario Inacio da Fonseca",
          "course": "Engenharia da Computação",
          "startSem": "2019.1",
          "endSem": "2023.1",
          "grantorId": 1,
          "responsibleId": 1,
          "professorId": 1,
          "status": 0
        }
			]
    }
    render json: @process
  end
end