class CreateJoinTableCategoriesPosts < ActiveRecord::Migration[8.1]
  def change
    create_join_table :categories, :posts do |t|
      t.index :category_id
      t.index :post_id
    end
  end
end