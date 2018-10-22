class StampCardSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :deal_id, :current_points, :store_id, :deal

  def store_id
  # all_cards = {}
    object.deal.store.id
  end

end
