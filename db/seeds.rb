# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# this might be bad design
# we're coupling db with localization
tags = Tags.create([
	{:name => 'Social'},
	{:name => 'Informática'},
	{:name => 'Arte'}
	]);