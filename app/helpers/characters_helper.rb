module CharactersHelper
    def user_character_icon_url(user)
        user.character != nil ? url_for(user.character.icon) : url_for('defaults/avatar.jpg')
    end
end
