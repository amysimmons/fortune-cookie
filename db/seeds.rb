# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Fortune.destroy_all

Fortune.create(
	[
		{
			:description => 'Change can hurt, but it leads a path to something better.', 
			:name => 'Amy', 
			:age => 28, 
			:city => 'Sydney', 
			:country => 'Australia', 
			:twitter_handle => "https://twitter.com/amesimmons"
		},
		{
			:description => 'A chance meeting opens new doors to success and friendship.', 
			:name => 'Zoe', 
			:age => 29, 
			:city => 'Sydney', 
			:country => 'Australia', 
			:twitter_handle => "https://twitter.com/amesimmons"
		},
		{
			:description => 'The love of your life is stepping into your planet this summer.', 
			:name => 'Hazel', 
			:age => 31, 
			:city => 'Sydney', 
			:country => 'Australia', 
			:twitter_handle => "https://twitter.com/amesimmons"	
		}
	]
)
