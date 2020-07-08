class Match < ApplicationRecord
  belongs_to :user
  belongs_to :user_two, class_name: "User"
end
