# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  belongs_to :character

   #role
   GOD = 'g'
   ADMIN = 'a'
   MEMBER = 'm'

   def to_param
       username
   end
   
end
