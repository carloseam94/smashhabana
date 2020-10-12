# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[account]
  def account; end
end
