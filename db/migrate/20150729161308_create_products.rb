class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand_name
      t.string :price

      t.timestamps null: false
    end
  end
end
