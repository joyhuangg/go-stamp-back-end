class DealsController < ApplicationController
  def index
    @deals = Deal.all
    render json: @deals
  end

  def show
    @deal = Deal.find(params[:id])
    render json: @deal
  end

  def create
    @deal = Deal.new(deal_params)
   if @deal.save
     render json: @deal, status: :accepted
   else
     render json: {errors: @deal.errors.full_messages}, status: :unprocessible_entity
   end
  end

  def deal_params
    params.permit(:category, :description, :max_points, :store_id)
  end
end
