class User < ApplicationRecord
  # validation
  validates :name,
            presence: true,
            length: { maximum: 50 }

  # relation
  has_many :posts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
