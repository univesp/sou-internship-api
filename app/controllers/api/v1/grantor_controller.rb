class Api::V1::GrantorController < ApplicationController
  def index
    @grantor = {
      "grantor": [
        {
          "id": 1,
          "name": "Universidade São Paulo",
          "phone": "1112344556",
          "zip": "05508900"
        }, 
        {
          "id": 2,
          "name": "Universidade Bahia",
          "phone": "7122334456",
          "zip": "00890870"
        },
        {
          "id": 3,
          "name": "Universidade Mogi",
          "phone": "1165128021",
          "zip": "25508901"
        },
        {
          "id": 4,
          "name": "International Business Machines - IBM",
          "phone": "1199991111",
          "zip": "04007900"
        }
      ]
    }
    render json: @grantor
  end
end
