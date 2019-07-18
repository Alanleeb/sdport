class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable

  has_many :watched_coins, dependent: :destroy
  has_many :coins, through: :watched_coins
  
  include DeviseTokenAuth::Concerns::User
end
