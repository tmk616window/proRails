class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :text
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
