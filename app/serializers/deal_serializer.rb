class DealSerializer < ActiveModel::Serializer
  attributes :id, :category, :background_url, :max_points, :store_id, :store

end
