class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end
  def create
    @customer = Customer.new(params[customer_params])
    if @customer.save
      redirect_to @customer
    else
      render :new, :status, :unprocessable_entity
    end
  end
  def show
    @customer = get_customer
  end

  def edit
  end

  def update
  end

  private
  def get_customer
    @customer = Customer.find(params[:id])
  end
  def customer_params
    params.expect([ customer: [ :name ] ])
  end
end
