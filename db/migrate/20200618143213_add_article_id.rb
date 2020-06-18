class AddArticleId < ActiveRecord::Migration[5.2]
  def change
    add_table :articles, user_id, integer
  end
end
