class Api::V1::ResponsibleController < ApplicationController
  def index
    @responsibles = {
			"responsibles": [
			  {
          "id": 1,
          "name": "Mario Inacio da Fonseca",
          "phone": ["1112344556","1165566556"],
          "email": "mario.fonseca@univesp.br"
        }, 
        {
          "id": 2,
          "name": "Marcos Soares Campos",
          "phone": ["7122334456","7165443322"],
          "email": "marcos.campos@univesp.br"
        },
        {
          "id": 3,
          "name": "Antonio Bandeira Nunes",
          "phone": ["1165128021","1112085611"],
          "email": "antonio.nunes@univesp.br"
        },
        {
          "id": 4,
          "name": "Jack Bauer",
          "phone": ["1199991111","1111119999"],
          "email": "jack.bauer@univesp.br"
        }
			]
    }
    render json: @responsibles
  end
  def show
    @responsible = {
			"responsible": [
			  {
          "id": 1,
          "name": "Mario Inacio da Fonseca",
          "phone": ["1112344556","1165566556"],
          "email": "mario.fonseca@univesp.br"
        }
			]
    }
    render json: @responsible
  end
end