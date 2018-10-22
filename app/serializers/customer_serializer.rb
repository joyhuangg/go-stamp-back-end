class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :stamp_cards, :username, :bio, :avatar

end
