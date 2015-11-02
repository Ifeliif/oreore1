class CreateBuyings < ActiveRecord::Migration
  def change
    create_table :buyings do |t|
      t.references :book
      t.references :user
      t.date :buy_date
      t.integer :number

      t.timestamps
    end
  end
end
