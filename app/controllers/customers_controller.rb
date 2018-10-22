class CustomersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @customers = Customer.all
    render json: @customers
  end

  def stores
    render json: {customer: CustomerSerializer.new(current_user), stores: Stores.all}, status: :accepted
  end

  def show
    @customer =  Customer.find(params[:id])
    render json: @customer
  end

  def create
     @customer = Customer.new(customer_params)
     if @customer.save
       @token = encode_token(customer_id: @customer.id)
       render json: {customer: CustomerSerializer.new(@customer), jwt:@token}, status: :created
     else
       render json: {error: 'Failed to create user'}, status: :not_acceptable
     end
  end

  def customer_params
    params.permit(:name, :stamp_cards, :username, :bio, :avatar, :password)
  end

end
