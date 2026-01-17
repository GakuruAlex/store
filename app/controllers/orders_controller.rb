class OrdersController < ApplicationController
  def index
    @orders = Order.includes(:customer)
  end

  def show
  end

  def edit
  end

  def update
  end
end
