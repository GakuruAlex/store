class CustomersController < ApplicationController
  before_action :set_customer, only: [ :edit, :show, :delete, :update ]
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, notice: "Customer #{@customer.name} Created Successfully"
    else
      render :new, :status, :unprocessable_entity
    end
  end
  def show
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    redirect_to @customer
  end
  def delete
    if @customer.destroy
      redirect_to customers_path, notice: "Customer deleted successfully."
    else redirect_to customers_path, alert: "Unable to delete customer."
    end
  end

  private
  def set_customer
    @customer = Customer.find(params[:id])
    @orders = @customer.orders.order(date_of_purchase: :desc)
  end
  def customer_params
    params.expect([ customer: [ :name ] ])
  end
end
