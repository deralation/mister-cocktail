class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.text :desctription
      t.references :coctail, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
