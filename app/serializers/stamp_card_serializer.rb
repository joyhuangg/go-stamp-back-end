class StampCardSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :deal_id, :current_points, :store_id, :deal, :store

  def store_id
  # all_cards = {}
    object.deal.store.id
  end

  def store
    object.deal.store
  end

end
