class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user
      t.references :tweet
      t.string :user_id
      t.string :tweet_id

      t.timestamps
    end
  end
end
