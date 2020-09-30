# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

#account_number = Faker::Number.number(digits: 4)

#bank_name = Faker::Bank.name

# transaction_balance = Faker::Number.decimal(l_digits: 4, r_digits: 2)


User.destroy_all

User.create(name:"Aimee Liang", email_address: "aimee@flatironschool.com", password: "abc1234")