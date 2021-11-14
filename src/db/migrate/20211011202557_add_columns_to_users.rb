class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :live, :string
    add_column :users, :details, :text
  end
end
