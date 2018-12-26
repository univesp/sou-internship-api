# == Schema Information
#
# Table name: document_types
#
#  id            :integer          not null, primary key
#  name_document :string(45)
#  created_at    :datetime
#  updated_at    :datetime
#

class DocumentType < ApplicationRecord
  has_many :internship_documents
end
