class CreateTools < ActiveRecord::Migration[6.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
