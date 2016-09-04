class CreateMerchants < ActiveRecord::Migration[5.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :surname
      t.string :mail
      t.string :password

      t.timestamps
    end
  end
end
