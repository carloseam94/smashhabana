# frozen_string_literal: true

module UsersHelper
  def user_avatar_url(user)
    user.avatar.attached? ? url_for(user.avatar) : url_for('defaults/avatar.jpg')
  end
end
