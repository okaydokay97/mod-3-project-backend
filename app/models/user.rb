class User < ApplicationRecord
  has_many :matches
  has_many :rejects 
end
