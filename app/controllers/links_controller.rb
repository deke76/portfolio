class LinksController < ApplicationController
  before_action :check_for_form

  def show
    @user = User.find(params[:user])
  end

  def check_for_form
    puts "LinksController => params: #{params}"
    if params[:id] == "Contact Form"
      redirect_to new_message_path :position => params[:position]
    end

  end

end
