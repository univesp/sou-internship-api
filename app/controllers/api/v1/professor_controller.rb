class Api::V1::ProfessorController < ApplicationController
	def index
		@professor = {
			"professor": [
			  {
          "id": 1,
          "name": "Alberto Silva",
          "phone": "1132322323",
          "email": "alberto.silva@univesp.br"
        }, 
        {
          "id": 2,
          "name": "José Alvarez Munhoz",
          "phone": "1133444433",
          "email": "jose.munhoz@univesp.br"
        },
        {
          "id": 3,
          "name": "Aline Ribeiro da Silva",
          "phone": "11143433434",
          "email": "aline.silva@univesp.br"
        },
        {
          "id": 4,
          "name": "Valentino Rossi",
          "phone": "1156655665",
          "email": "valentino.rossi@univesp.br"
        }
			]
    }
    render json: @professor
	end
end
