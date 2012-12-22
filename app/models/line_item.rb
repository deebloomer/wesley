class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :route
 # belongs_to :product
  belongs_to :cart
  belongs_to :route_detail
  attr_accessible :cart_id, :route_id, :route_detail_id

  def total_price
    route.price * quantity
  end
end