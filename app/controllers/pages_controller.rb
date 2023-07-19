class PagesController < ApplicationController
  def index
    links = NavigationLink.all
    puts links.select { |link| !link.parent_id }
    @navigation_links = NavigationLink.all
  end
end
