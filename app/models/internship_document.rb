# == Schema Information
#
# Table name: internship_documents
#
#  id                    :integer          not null, primary key
#  internship_process_id :integer          not null
#  document_type_id      :integer          not null
#  attachment            :text(4294967295)
#  created_at            :datetime
#  updated_at            :datetime
#

class InternshipDocument < ApplicationRecord
  belongs_to :internship_process
  belongs_to :document_type
end
