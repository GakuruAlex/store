class OrdersController < ApplicationController
  before_action :set_order, only: [ :show, :edit, :update , :destroy]
  def index
    @orders = Order.includes(:customer)
  end

  def show
  end
  def new
    if params[:customer_id]
      @customer = Customer.find(params[:customer_id])
      @order = @customer.orders.build
      2.times {@order.order_products.build}
    else
      @order = Order.new
      2.times {@order.order_products.build}

    end
     end
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order, notice: "Order placed successfully"
    else
      render :new
    end
  end
  def edit
  end

  def update
  end

  def destroy
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(
      :date_of_purchase,
      :amount,
      :customer_id,
      order_products_attributes: [ :product_id, :quantity ]
    )
  end
  def set_order
    @order = Order.find(params[:id])
  end
end
