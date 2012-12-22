class AddRouteIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :route_id, :integer
  end
end
