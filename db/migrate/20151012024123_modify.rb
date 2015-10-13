class Modify < ActiveRecord::Migration
  def change
    add_column :users, :count, :integer, default: 0
    add_column :users, :sign_in, :datetime
    add_column :users, :sign_out, :datetime
  end
end
