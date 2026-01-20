class OrdersController < ApplicationController
  before_action :set_order, only: [ :show, :edit, :update ]
  def index
    @orders = Order.includes(:customer)
  end

  def show
  end
  def new
    @order = Order.new
    @order.order_products.build
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
