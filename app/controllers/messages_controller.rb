class MessagesController < ApplicationController

  def new
  end

  def create
    puts "MessagesController#create => params: #{params}"
  end

end
