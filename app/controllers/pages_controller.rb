class PagesController < ApplicationController
  def index
    user = 1
    @navigation_links = NavigationLink.nav_links(user)
  end
end
