class CustomersController < ApplicationController
  before_action :getcustomer, only: [ :edit, :show ]
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render :new, :status, :unprocessable_entity
    end
  end
  def show
  end

  def edit
  end

  def update
  end

  private
  def getcustomer
    @customer = Customer.find(params[:id])
  end
  def customer_params
    params.expect([ customer: [ :name ] ])
  end
end
