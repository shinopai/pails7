class Category < ApplicationRecord
  # relation
  has_many :topics
end
