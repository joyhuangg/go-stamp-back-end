class StampCardSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :deal_id, :current_points

end
