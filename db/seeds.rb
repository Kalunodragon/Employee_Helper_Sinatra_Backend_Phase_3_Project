require "faker"

puts "🌱 Brick building the (Lego)base..."
puts "     "
puts "SEEDING LEGO SIDE"
puts "     "

puts "Downloading Themes"
Theme.create(theme: "Star Wars")
Theme.create(theme: "Technic")
Theme.create(theme: "Brick Headz")
Theme.create(theme: "Botanical")
puts "Themes Loaded"
puts "     "

puts "Collecting LegoSets"
LegoSet.create(name: "BD-1", set_number: 75335, peices: 1062, theme_id: 1, age: 14)
LegoSet.create(name: "The Mandalorian & the Child", set_number: 75317, peices: 295, theme_id: 3, age: 10)
LegoSet.create(name: "Resistance Y-Wing Starfighter", set_number: 75249, peices: 578, theme_id: 1, age: 8)
LegoSet.create(name: "AT-AT vs Tauntaun Microfighters", set_number: 75298, peices: 205, theme_id: 1, age: 6)
LegoSet.create(name: "Wildflower Bouquet", set_number: 10313, peices: 939, theme_id: 4, age: 18)
LegoSet.create(name: "Dried Flower Centerpeice", set_number: 10314, peices: 812, theme_id: 4, age: 18)
puts "LegoSets Collected"
puts "     "

puts "Connecting Notes"
Note.create(lego_set_id: 1, owner_id: 1, body: "Most amazing set for Cal Kestis! Can't wait to build it!")
Note.create(lego_set_id: 2, owner_id: 1, body: "Second most interesting set")
Note.create(lego_set_id: 5, owner_id: 2, body: "We need a new vase to put all these flowers in!")
Note.create(lego_set_id: 3, owner_id: 1)
Note.create(lego_set_id: 4, owner_id: 1)
Note.create(lego_set_id: 6, owner_id: 2)
puts "Notes Connected"
puts "     "

puts "Building Owners"
Owner.create(first_name: "Andrew", last_name: "Onulak")
Owner.create(first_name: "Paula", last_name: "Onulak")
puts "Owners built"
puts "     "


20.times do
  Owner.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
end

puts "DONE SEEDING LEGO"
puts "     "
puts "THE LEGO-BASE IS COMPLETE"
puts "     "
