# == Schema Information
#
# Table name: internship_process_types
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  created_at :datetime
#  updated_at :datetime
#

class InternshipProcessType < ApplicationRecord
  has_many :internship_processes
end
