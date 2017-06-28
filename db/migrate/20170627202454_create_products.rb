class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :tagline
      t.integer :category_id
      t.integer :upvotes

      t.timestamps
    end
  end
end
