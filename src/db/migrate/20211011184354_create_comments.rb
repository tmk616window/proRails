class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :point
      t.text :text
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
