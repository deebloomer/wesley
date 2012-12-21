class PagesController < ApplicationController
  skip_before_filter :authorize



  def about
    @cart = current_cart
  end

  def events
    @cart = current_cart
  end

end
