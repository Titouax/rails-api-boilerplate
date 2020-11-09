class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  has_one :category
  has_one :user
end
