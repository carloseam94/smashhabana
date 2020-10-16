# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_user
    username = params[:username] || params[:user_username]
    @user = User.find_by(username: username)

    unless @user
      respond_to do |format|
        format.json { head :not_found }
        format.html { redirect_to root_path }
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :full_name, :email, :desc, :password, :character_id) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :full_name, :email, :desc, :avatar, :main, :password, :current_password, :confirmation_password, :character_id) }
  end

end
