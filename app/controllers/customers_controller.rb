class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    render json: @customers
  end

  def show
    @customer =  Customer.find(params[:id])
    render json: @customer
  end

  def create
    @customer = Customer.new(customer_params)
   if @customer.save
     render json: @customer, status: :accepted
   else
     render json: {errors: @customer.errors.full_messages}, status: :unprocessible_entity
   end
  end

  def user_params
    params.permit(:name, :stamp_cards)
  end

end
