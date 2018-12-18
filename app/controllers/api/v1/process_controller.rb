class Api::V1::ProcessController < ApplicationController
	def index
		@processes = {
			[
				{
					"id": 1,
					"type": 0,
					"status": 0,
					"created_at": "2018-12-17",
					"student_id": 1,
					"responsible_id": 1,
					"grantor_id": 1,
					"advisor_id": 1,
					"professor_id": 1,
					"moderator_name": "Tânia Soares de Souza"
				},
				{
					"id": 2,
					"type": 0,
					"status": 0,
					"created_at": "2018-12-17",
					"student_id": 1,
					"responsible_id": 1,
					"grantor_id": 1,
					"advisor_id": 1,
					"professor_id": 1,
					"moderator_name": "Tânia Soares de Souza"
				},
				{
					"id": 3,
					"type": 0,
					"status": 0,
					"created_at": "2018-12-17",
					"student_id": 1,
					"responsible_id": 1,
					"grantor_id": 1,
					"advisor_id": 1,
					"professor_id": 1,
					"moderator_name": "Rafael da Silva" 
				},
				{
					"id": 4,
					"type": 0,
					"status": 0,
					"created_at": "2018-12-17",
					"student_id": 1,
					"responsible_id": 1,
					"grantor_id": 1,
					"advisor_id": 1,
					"professor_id": 1,
					"moderator_name": "Rafael da Silva" 
				}
			]
		}
		render json: @processes
	end
	def show
		@process = {
			[
				{
					"id": 1,
					"type": 0,
					"status": 0,
					"created_at": "2018-12-17",
					"student_id": 1,
					"responsible_id": 1,
					"grantor_id": 1,
					"advisor_id": 1,
					"professor_id": 1,
					"moderator_name": "Tânia Soares de Souza"
				}
			]
		}
		render json: @process
	end
end
