class PagesController < ApplicationController
  def index
    @navigation_links = NavigationLink.all.order(:order)
  end
end
