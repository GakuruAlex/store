class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :new]
  def index
    @orders = Order.includes(:customer)
  end

  def show
  end
  def new

  end
  def edit
  end

  def update
  end

  private
  def order_params
    params.expect(order: [:date_of_purchase, :amount, order_products_attributes: [[:product_id, :quantity]]])
  end

  def set_order
    @order = Order.find_by(params[:id])
  end
end
