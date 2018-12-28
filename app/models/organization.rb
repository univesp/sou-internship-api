# == Schema Information
#
# Table name: organizations
#
#  id                   :integer          not null, primary key
#  organization_type_id :integer          not null
#  document_number      :string(45)
#  organization_name    :string(255)
#  phone1               :string(20)
#  phone2               :string(20)
#  fax                  :string(20)
#  street               :string(255)
#  street_number        :integer
#  city                 :string(100)
#  state                :string(2)
#  zipcode              :string(8)
#  created_at           :datetime
#  updated_at           :datetime
#

class Organization < ApplicationRecord
  belongs_to :organization_type, foreign_key: "organization_type_id"
  
  belongs_to :internship_process
end
