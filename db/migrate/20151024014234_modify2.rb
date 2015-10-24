class Modify2 < ActiveRecord::Migration
  def change
        add_column :users, :email,:string
        add_column :users, :admin,:boolean, null: false, default: false
        add_column :users, :birthday,:date
                
  end
end

