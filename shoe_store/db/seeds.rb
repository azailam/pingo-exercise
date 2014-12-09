# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.find_or_create_by(name: "Giay tay")
Category.find_or_create_by(name: "Giay the thao")
Category.find_or_create_by(name: "Giay cao got")

Company.find_or_create_by(name: "Song Van")
Company.find_or_create_by(name: "Hoang Hieu")
Company.find_or_create_by(name: "Giay Viet")

Shoe.find_or_create_by(price: "100", color: "Do", size: "40", category_id: "3", company_id: "1")
Shoe.find_or_create_by(price: "200", color: "Trang", size: "45", category_id: "2", company_id: "2")
Shoe.find_or_create_by(price: "500", color: "Den", size: "42", category_id: "1", company_id: "3")
Shoe.find_or_create_by(price: "220", color: "Xam", size: "30", category_id: "1", company_id: "2")
Shoe.find_or_create_by(price: "330", color: "Den Trang", size: "42", category_id: "3", company_id: "3")
Shoe.find_or_create_by(price: "300", color: "Den", size: "35", category_id: "2", company_id: "1")

