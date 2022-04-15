class Topic < ApplicationRecord
  # relation
  belongs_to :category, optional: true
end
