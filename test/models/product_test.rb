# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  category   :string
#  created_at :datetime         not null
#  name       :string
#  price      :float
#  quantity   :integer
#  updated_at :datetime         not null
#

require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
