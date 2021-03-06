class CreateUserImages < ActiveRecord::Migration
  def change
    create_table :user_images do |t|
      t.references :user, null: false
      t.binary :data
      t.string :content_type

      t.timestamps
    end
  end
end
