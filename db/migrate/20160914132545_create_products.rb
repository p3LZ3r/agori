class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :hierarchy
      t.string :type

      t.timestamps
    end
  end
end
