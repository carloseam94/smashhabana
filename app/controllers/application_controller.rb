# frozen_string_literal: true

class ApplicationController < ActionController::Base
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
end
