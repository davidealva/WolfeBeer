class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :avatar
      t.string :name
      t.integer :quantity
      t.string :city
      t.string :country
      t.boolean :shipped

      t.timestamps null: false
    end
  end
end
