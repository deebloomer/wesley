class AddRouteDetailIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :route_detail_id, :integer
  end
end
