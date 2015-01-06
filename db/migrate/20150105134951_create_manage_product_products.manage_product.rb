# This migration comes from manage_product (originally 20141231113631)
class CreateManageProductProducts < ActiveRecord::Migration
  def change
    create_table :manage_product_products do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
