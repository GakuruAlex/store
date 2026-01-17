# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  amount           :decimal(, )
#  created_at       :datetime         not null
#  customer_id      :integer
#  date_of_purchase :date
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_orders_on_customer_id  (customer_id)
#

require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
