class CreateProlongs < ActiveRecord::Migration[6.1]
  def change
    create_table :prolongs do |t|
      t.string :lange

      t.timestamps
    end
  end
end
