class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :bio, :gender, :age, :img_url
end
