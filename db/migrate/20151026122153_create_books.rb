class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price
      t.integer :selling
      t.string :category
      t.date :published
      

      t.timestamps
    end
  end
end
