module UsersHelper
    def user_avatar_url(user)
        user.avatar.attached? ? url_for(user.avatar) : url_for('default-avatar.jpeg') 
    end
end
