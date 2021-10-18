class CreateMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :migrations do |t|
      t.text :description
      t.string :purl

      t.timestamps
    end
  end
end
