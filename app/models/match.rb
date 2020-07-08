class Match < ApplicationRecord
  belongs_to :user_one, :foreign_key => :user_two_id
  belongs_to :user_two, :foreign_key => :user_one_id
  # belongs_to :user_one, :class_name => "User"
  # belongs_to :user_two, :class_name => "User"
end
