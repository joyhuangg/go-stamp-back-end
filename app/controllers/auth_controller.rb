class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @customer = Customer.find_by(username: customer_login_params[:username])
    #User#authenticate comes from BCrypt
    if @customer && @customer.authenticate(customer_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ customer_id: @customer.id })
      render json: { customer: @customer, token: token }, status: :accepted
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def show
    token = request.headers["Authorization"]
    customer = Customer.find_by(id: decoded_token[0]["customer_id"])
    if customer
      render json: {username: customer.username, id: customer.id}
    else
      render json: {error: 'Invalid Token'}, status: 401
    end
  end

  private

  def customer_login_params
    params.permit(:username, :password, :auth)
  end
end
