class Modify1 < ActiveRecord::Migration
  def change
    
    add_column :users, :introduction ,:text
  end
end
