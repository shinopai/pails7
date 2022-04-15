class Post < ApplicationRecord
  # relation
  belongs_to :user
  has_one_attached :image

  # validations
  validates :title, :body, presence: true
  validates :title, length: { maximum: 50 }
  validates :body, length: { maximum: 150 }
  validates :image,  blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'] }
end
