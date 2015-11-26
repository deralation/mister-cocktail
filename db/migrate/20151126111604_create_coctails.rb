class CreateCoctails < ActiveRecord::Migration
  def change
    create_table :coctails do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
