# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
User.destroy_all
User.create(
  :email => 'test@yopmail.com',
  :display_name => 'Scion User',
  :password => 'password-1',
  :password_confirmation => 'password-1'
)

ManageProduct::Product.destroy_all
ManageProduct::Product.create(
  :name => 'Keyboard',
  :price => '600.00'
)

ManageProduct::Product.create(
  :name => 'Mouse',
  :price => '350.00'
)

ManageProduct::Product.create(
  :name => 'Monitor',
  :price => '6500.00'
)

Store::Order.destroy_all

first_order = Store::Order.new(
  :product_id => ManageProduct::Product.first.id,
  :quantity => 2
)

first_order.user_id = User.first.id
first_order.save

second_order = Store::Order.new(
  :product_id => ManageProduct::Product.all[1].id,
  :quantity => 3,
)

second_order.user_id = User.first.id
second_order.save
