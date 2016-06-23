# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

adm = Admin.new
adm.email = 'serarba@outlook.com'
adm.password = 'dev_chelco_12345'
adm.password_confirmation = 'dev_chelco_12345'
adm.save!