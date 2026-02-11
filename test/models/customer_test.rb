# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  name       :string
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_customers_on_user_id  (user_id)
#

require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
