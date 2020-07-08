class User < ApplicationRecord
  has_many :matches, :class_name => "Match", :foreign_key => :user_one_id
  has_many :user_ones, through: :matches
  has_many :matches, :class_name => "Match", :foreign_key => :user_two_id
  has_many :user_twos, through: :matches
  # has_many :rejects, :foreign_key => "user_one"
  # has_many :rejects, :foreign_key => "user_two"
end
