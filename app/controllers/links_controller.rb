class LinksController < ApplicationController

  def show
    puts "params: #{params}"
    @user = User.find(params[:user])
  end

end
