class AdditionsController < ApplicationController
  def index
    if params.except(:controller, :action).present?
      number_one = params[:number_one].to_i
      number_two = params[:number_two].to_i

      render(
        json: {
          number_one: number_one,
          number_two: number_two,
          sum: add_two_nums(number_one, number_two)
        }
      )
    end
  end
  def add_two_nums(number_one, number_two)
    number_one + number_two
  end
end
