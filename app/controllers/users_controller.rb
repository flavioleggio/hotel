class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_permission

  def index
    @users = User.all
  end

  protected

  def check_permission
    unless current_user.admin?
      render html: "<strong>Access denied</strong></br><p>Please return to Home</p>".html_safe

    end
  end
end
