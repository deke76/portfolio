class LinksController < ApplicationController

  def index
    @links = NavigationLink.where(parent_id: 5)
  end
end
