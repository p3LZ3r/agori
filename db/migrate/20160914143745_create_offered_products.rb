class CreateOfferedProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :offered_products do |t|
      t.string :username
      t.string :product
      t.float :price
      t.float :amount

      t.timestamps
    end
  end
end
