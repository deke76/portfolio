class PagesController < ApplicationController
  def index
    user = 1
    @navigation_links = NavigationLink.nav_links(user)
  end

  def show
    user = 1
    user_links = NavigationLink.page_links(user)
    description = helpers.convert_snake_to_title_case params[:id]
    @links = { description => user_links[description] }
  end
end
