# This migration comes from store (originally 20141230122259)
class CreateStoreOrders < ActiveRecord::Migration
  def change
    create_table :store_orders do |t|
      t.references :product
      t.integer :quantity
      t.timestamps
    end
      add_index :store_orders, :product_id
  end
end
