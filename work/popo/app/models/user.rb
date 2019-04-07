class User < ApplicationRecord
   has_many :spots
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

  validates :username, presence: true #追記
  validates :introduction, length: { maximum: 500 } #追記
end
