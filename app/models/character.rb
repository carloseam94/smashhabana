class Character < ApplicationRecord
    has_one_attached :icon
    has_many :users
end
