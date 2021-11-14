class CreateTposts < ActiveRecord::Migration[6.1]
  def change
    create_table :tposts do |t|
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
