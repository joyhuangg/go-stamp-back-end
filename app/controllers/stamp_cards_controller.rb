class StampCardsController < ApplicationController
  def index
    @stamp_cards = StampCard.all
    render json: @stamp_cards
  end

  def show
    @stamp_card = StampCard.find(params[:id])
    render json: @stamp_card
  end

  def create
    @stamp_card = StampCard.new(stamp_cards_params)
   if @stamp_card.save
     render json: @stamp_card, status: :accepted
   else
     render json: {errors: @stamp_card.errors.full_messages}, status: :unprocessible_entity
   end
  end

  def update
    @stamp_card = StampCard.find(params[:id])
    StampCard.update(params[:id].to_i, deal_id:params[:stamp_card][:deal_id], current_points: params[:stamp_card][:current_points])
    if @stamp_card.save
      render json: @stamp_card, status: :accepted
    else
      render json: {errors: @stamp_card.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private
  
  def stamp_cards_params
    params.permit(:customer_id, :deal_id, :current_points)
  end
end
