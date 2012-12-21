class RouteDetail < ActiveRecord::Base
  attr_accessible :minutes_from_start, :route_id, :stop_id, :stop_name, :zone_no

  belongs_to :route
  has_many :route_schedules
  has_many :line_items
end
