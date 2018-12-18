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
  
end
