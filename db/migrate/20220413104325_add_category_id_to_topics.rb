class AddCategoryIdToTopics < ActiveRecord::Migration[7.0]
  def change
    add_reference :topics, :category, foreign_key: true
  end
end
