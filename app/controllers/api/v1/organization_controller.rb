class Api::V1::OrganizationController < ApplicationController
	def index
		organizations = Organization.order('created_at ASC');
		render json: {data:organizations},status: :ok
	end

	def show 
		organization = Organization.find(params[:id])
		render json: {data:organization},status: :ok
	end

	def create
		organization = Organization.new(organization_params)

		if organization.save
			render json: {data:organization},status: :ok
		else
			render json: {data:organization.errors},status: :unprocessable_entity
		end
	end

	def update
		organization = Organization.find(params[:id])
		
		if organization.update(organization_params)
			render json: {data:organization},status: :ok
		else
			render json: {data:organization.errors},status: :unprocessable_entity
		end
	end

	def destroy
		organization = Organization.find(params[:id])
		organization.destroy
		render json: {data:organization},status: :ok
	end

	private

		def organization_params
			params.require(:organization).permit(
				:organization_type_id,
				:document_number,
				:organization_name,
				:phone1,
				:phone2,
				:fax,
				:street,
				:street_number,
				:city,
				:state,
				:zipcode
			)
		end
end