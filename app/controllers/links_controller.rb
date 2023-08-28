class LinksController < ApplicationController
  before_action :check_for_form, :check_for_projects

  def show
    @user = User.find(params[:user])
  end

  def check_for_form
    if params[:id] == "Contact Form"
      redirect_to new_message_path :position => params[:position]
    end
  end

  def check_for_projects
    redirect_to projects_path :position => params[:position]
  end

end
