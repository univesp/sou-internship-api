class Api::V1::ProfessorController < ApplicationController
	def index
		@professors = {
			"professors": [
			  {
          "id": 1,
          "name": "Alberto Silva",
          "phone": ["1112344556","1165566556"],
          "email": "alberto.silva@univesp.br"
        }, 
        {
          "id": 2,
          "name": "José Alvarez Munhoz",
          "phone": ["7122334456","7165443322"],
          "email": "jose.munhoz@univesp.br"
        },
        {
          "id": 3,
          "name": "Aline Ribeiro da Silva",
          "phone": ["1165128021","1112085611"],
          "email": "aline.silva@univesp.br"
        },
        {
          "id": 4,
          "name": "Valentino Rossi",
          "phone": ["1199991111","1111119999"],
          "email": "valentino.rossi@univesp.br"
        }
			]
    }
    render json: @professors
  end
  def show
    @professor = {
			"professor": [
			  {
          "id": 1,
          "name": "Alberto Silva",
          "phone": ["1112344556","1165566556"],
          "email": "alberto.silva@univesp.br"
        }
			]
    }
    render json: @professor
  end
end