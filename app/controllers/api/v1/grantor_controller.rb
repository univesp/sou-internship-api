class Api::V1::GrantorController < ApplicationController
  def index
    @grantors = {
      "grantors": [
        {
          "id": 1,
          "name": "Universidade São Paulo",
          "cnpj": "63025530000104",
          "phone": ["1112344556","1165566556"],
          "fax": "7122334456",
          "zip": "05508900",
          "street": "Rua da Praça do Relógio",
          "number": "109",
          "city": "São Paulo",
          "federatedState": "São Paulo"
        }, 
        {
          "id": 2,
          "name": "Universidade Federal da Bahia",
          "cnpj": "15180714000104",
          "phone": ["7122334456","7165443322"],
          "fax": "7122334456",
          "zip": "40110909",
          "street": "Rua Augusto Viana",
          "number": "S/N",
          "city": "Salvador",
          "federatedState": "Bahia"
        },
        {
          "id": 3,
          "name": "Universidade de Mogi das Cruzes",
          "cnpj": "52562758000117",
          "phone": ["1165128021","1112085611"],
          "fax": "7122334456",
          "zip": "08780911",
          "street": "Avenida Dr. Cândido Xavier de Almeida Souza",
          "number": "200",
          "city": "Mogi das Cruzes",
          "federatedState": "São Paulo"
        },
        {
          "id": 4,
          "name": "International Business Machines - IBM",
          "cnpj": "07127471000104",
          "phone": ["1199991111","1111119999"],
          "fax": "7122334456",
          "zip": "04007900",
          "street": "Rua Tutóia",
          "number": "1157",
          "city": "São Paulo",
          "federatedState": "São Paulo"
        }
      ]
    }
    render json: @grantors
  end
  def show
    @grantor = {
      "grantor": [
        {
          "id": 1,
          "name": "Universidade São Paulo",
          "phone": ["1112344556","1165566556"],
          "zip": "05508900",
          "street": "Rua da Praça do Relógio",
          "number": "109",
          "city": "São Paulo",
          "state": "São Paulo"
        }
      ]
    }
    render json: @grantor
  end
end