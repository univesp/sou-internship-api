class Api::V1::InternshipDocumentController < ApplicationController
  
  def index
    documents = InternshipDocument.order('created_at ASC');
    render json: {documents: documents}, status: :ok
  end

  def show
    document = InternshipDocument.find(params[:id])
    render json: {document: document}, status: :ok
  end

  def create
    internship_document = InternshipDocument.new(document_params)

    if internship_document.save
      render json: {document: internship_document}, status: :ok
    else
      render json: {document: internship_document.errors}, status: :unprocessable_entity
    end
  end

  def update
    internship_document = InternshipDocument.find(params[:id])

		if internship_document.update(document_params)
			render json: {document: internship_document}, status: :ok
		else
			render json: {document: internship_document.errors}, status: :unprocessable_entity
		end
  end

  def destroy
    internship_document = InternshipDocument.find(params[:id])
		internship_document.destroy
		render json: {document: internship_document}, status: :ok
  end

  private 
    def document_params
      params.require(:internship_document).permit(
        :internship_process_id,
        :document_type_id,
        :attachment
			)
    end

end


#  id                    :integer          not null, primary key
#  internship_process_id :integer          not null
#  document_type_id      :integer          not null
#  attachment            :text(4294967295)
#  created_at            :datetime
#  updated_at            :datetime
