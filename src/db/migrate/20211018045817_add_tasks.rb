class AddTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :description, :text

    add_column :tasks, :purl, :string
  end
end
