class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :role, :last_login
end
