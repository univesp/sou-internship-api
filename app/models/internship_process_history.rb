# == Schema Information
#
# Table name: internship_process_histories
#
#  id                    :integer          not null, primary key
#  internship_process_id :integer          not null
#  user_id               :integer
#  status                :string(45)
#  created_at            :datetime
#  updated_at            :datetime
#

class InternshipProcessHistory < ApplicationRecord
  belongs_to :internship_process
end
