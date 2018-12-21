class Api::V1::OrganizationController < ApplicationController
	def index
		organizations = Organization.order('created_at DESC');
		render json: {status: 'SUCCESS', message:'Loaded organizations', data:organizations},status: :ok
	end

	def show 
		organization = Organization.find(params[:id])
		render json: {status: 'SUCCESS', message:'Loaded organization', data:organization},status: :ok
	end

	def create
		organization = Organization.new(organization_params)

		if organization.save
			render json: {status: 'SUCCESS', message:'Saved organization', data:organization},status: :ok
		else
			render json: {status: 'ERROR', message:'organizations not saved', data:organization.erros},status: :unprocessable_entity
		end
	end

	def update
		organization = Organization.find(params[:id])

		if organization.update_attributes(organization_params)
			render json: {status: 'SUCCESS', message:'Updated organization', data:organization},status: :ok
		else
			render json: {status: 'ERROR', message:'organizations not update', data:organization.erros},status: :unprocessable_entity
		end
	end

	def destroy
		organization = Organization.find(params[:id])
		organization.destroy
		render json: {status: 'SUCCESS', message:'Deleted organization', data:organization},status: :ok
	end

	private

		def organization_params
			params.permit(
				:id,
				:organization_type_id,
				:document_number,
				:organization_name,
				:phone1,
				:phone2,
				:fax,
				:street_type,
				:street_number,
				:city,
				:state,
				:zipcode
			)
		end
end
