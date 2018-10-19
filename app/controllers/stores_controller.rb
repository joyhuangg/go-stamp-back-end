class StoresController < ApplicationController
  def index
    @stores = Store.all
    render json: @stores
  end

  def show
    @store =  Store.find(params[:id])
    render json: @store
  end

  def create
    @store = Store.new(store_params)
   if @store.save
     render json: @store, status: :accepted
   else
     render json: {errors: @store.errors.full_messages}, status: :unprocessible_entity
   end
  end

  def store_params
    params.permit(:name, :deals)
  end
end
