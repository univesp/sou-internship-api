class Api::V1::ResponsibleController < ApplicationController
  def index
    @responsible = {
			"responsible": [
			  {
          "id": 1,
          "name": "Mario Inacio da Fonseca",
          "phone": "1134445537",
          "email": "mario.fonseca@univesp.br"
        }, 
        {
          "id": 2,
          "name": "Marcos Soares Campos",
          "phone": "1133444433",
          "email": "marcos.campos@univesp.br"
        },
        {
          "id": 3,
          "name": "Antonio Bandeira Nunes",
          "phone": "11143433434",
          "email": "antonio.nunes@univesp.br"
        },
        {
          "id": 4,
          "name": "Jack Bauer",
          "phone": "1156655665",
          "email": "jack.bauer@univesp.br"
        }
			]
    }
    render json: @responsible
	end
end
