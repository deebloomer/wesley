class Route < ActiveRecord::Base
  attr_accessible :finish, :inbound_code, :outbound_code, :return_route, :start, :price
  has_many :route_details
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item         #dee copied from products

  def self.search(search_terms)

    the_term = "%" + search_terms + "%"

    find(:all, :include => "route_details", :conditions => ["routes.start LIKE ? or routes.finish LIKE ? or route_details.stop_name LIKE ?", the_term, the_term, the_term])
    # Dan find all is restricted to route as thats where we are, then include means we can get info from route_details
  end   #DEE GOING TO TRY SEARCH FROM TUTORIALS    or route_details.stop_name LIKE ?


  #def self.search(search_query)
  #   if search_query
  #     find(:all, :conditions => ['start LIKE ?', "%#{search_query}%"])
  #    else
  #    find(:all)
  #    end
  #
  #
  #end

  def ensure_not_referenced_by_any_line_item   # dee copied lines 23 - 30 from product.rb
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

  def
  combined_name
    return start+" - "+finish          #dee
  end

end
