class RemoveCategoryFormTopics < ActiveRecord::Migration[7.0]
  def change
    remove_column :topics, :category_id
  end
end
