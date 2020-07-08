class User < ApplicationRecord
  has_many :matches, dependent: :destroy
  has_many :user_twos, through: :matches

  has_many :rejects, dependent: :destroy
  has_many :user_twos, through: :rejects
end
