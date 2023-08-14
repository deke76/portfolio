class PagesController < ApplicationController
  def index
    user = 1
    @navigation_links = NavigationLink.nav_links(user)
  end

  def show
    user = 1
    nav_links = NavigationLink.nav_links(user)
    index = nav_links[:navbar].find_index {
      |link| link.description == params[:id]
    }
    current_page = nav_links[:navbar].slice!(index)
    if index.even?
      nav_links[:navbar].unshift(current_page)
    else
      nav_links[:navbar].push(current_page)
    end
    @navigation_links = nav_links
    puts "index: #{index}"
    @position = index.even? ? "top" : "bottom"
  end
end
