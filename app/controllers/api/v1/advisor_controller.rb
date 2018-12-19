class Api::V1::AdvisorController < ApplicationController
  def index
		@advisors = {
			"advisors": [
			  {
          "id": 1,
          "name": "Alberto Silva",
          "phone": ["1112344556","1165566556"],
          "email": "alberto.silva@univesp.br",
          "departament": "Engenharias"
        }, 
        {
          "id": 2,
          "name": "José Alvarez Munhoz",
          "phone": ["7122334456","7165443322"],
          "email": "jose.munhoz@univesp.br",
          "departament": "Administração"
        },
        {
          "id": 3,
          "name": "Aline Ribeiro da Silva",
          "phone": ["1165128021","1112085611"],
          "email": "aline.silva@univesp.br",
          "departament": "Centro de recursos compartilhados"
        },
        {
          "id": 4,
          "name": "Valentino Rossi",
          "phone": ["1199991111","1111119999"],
          "email": "valentino.rossi@univesp.br",
          "departament": "Tecnologia da informação"
        }
			]
    }
    render json: @advisors
  end
  def show
    @advisor = {
			"advisor": [
			  {
          "id": 1,
          "name": "Alberto Silva",
          "phone": ["1112344556","1165566556"],
          "email": "alberto.silva@univesp.br",
          "departament": "Engenharias"
        }
			]
    }
    render json: @advisor
  end
end