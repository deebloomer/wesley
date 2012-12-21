class TicketPrice < ActiveRecord::Base
  attr_accessible :no_of_zones, :price
  belongs_to :route_schedule
end
