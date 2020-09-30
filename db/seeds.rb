# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'
User.destroy_all


User.create(name:"Aimee Liang", email_address: "aimee@flatiron.com", password: "abc1234")

# for bank account
# Faker::Bank.account_number 

# bank name
# Faker::Bank.name

# for transaction balance
# Faker::Number.decimal(l_digits: 4, r_digits: 2)