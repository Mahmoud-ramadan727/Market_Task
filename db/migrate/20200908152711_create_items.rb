class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :price
      t.integer :stock
      t.string :brand
      t.text :description
      t.date :exp_date
      t.integer :min_allowed_stock
      t.belongs_to :category
      t.timestamps
    end
  end
end
