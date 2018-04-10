# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.create!(:username => 'Admin', :email => 'admin@email.com', :password => 'admin123', :password_confirmation => 'admin123', :role => 'admin')
Person.create!(:username => 'User', :email => 'user@email.com', :password => 'user123', :password_confirmation => 'user123', :role => 'user')