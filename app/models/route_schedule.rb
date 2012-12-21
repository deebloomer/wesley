class RouteSchedule < ActiveRecord::Base
  attr_accessible :capacity, :departure_time, :inbound, :integer, :outbound, :stop_id
  belongs_to :route_detail
  has_many :ticket_prices
end
