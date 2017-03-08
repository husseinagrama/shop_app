# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
items = [
  [ "tablet", "Apple", "iPad", "$499", "", "it's cool now, but will Apple keep its cool?"],
  [ "tablet", "Dell", "DellPad", "$498", "", "Dell is damn reliable."],
  [ "tablet", "Amazon", "KindleFire", "$199", "", "Sure it's cheap. Works OK too. But do you really want to be trapped in Bezos' ecosystem?"],
  [ "tablet" "Microsoft", "$500", "", "Microsoft. What can we say? Can't live with them, can't live without them." ]
]

items.each do |item|
  Item.create( :device => item[0], :brand => item[1], :price => item[2], :image => item[3], :description => item[4] )
end