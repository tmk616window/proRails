class CreateUproLangs < ActiveRecord::Migration[6.1]
  def change
    create_table :upro_langs do |t|
      t.string :lang
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
