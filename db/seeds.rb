puts "🌱 Seeding Database..."
# Seed your database here
puts "Seeding Employees..."

Employee.create(first_name: "Andrew", last_name: "Onulak", employee_number: 123456, bid_id: 1, station_id: 1)
Employee.create(first_name: "Joseph", last_name: "Lemming", employee_number: 123789, bid_id: 3, station_id: 1)
Employee.create(first_name: "Scott", last_name: "Pilgrahm", employee_number: 456789, bid_id: 5, station_id: 1)
Employee.create(first_name: "Link", last_name: "Zelda", employee_number: 789456, bid_id: 2, station_id: 2)
Employee.create(first_name: "Farmer", last_name: "Joe", employee_number: 456123, bid_id: 4, station_id: 2)

puts "Done seeding Employees!"

puts "Seeding Bids..."

Bid.create(employee_id: 1, sunday: 1, monday: 1, tuesday: 2, wednesday: 2, thursday: 2, friday: 2, saturday: 2)
Bid.create(employee_id: 2, sunday: 5, monday: 5, tuesday: 5, wednesday: 1, thursday: 1, friday: 5, saturday: 5)
Bid.create(employee_id: 3, sunday: 3, monday: 1, tuesday: 1, wednesday: 3, thursday: 3, friday: 3, saturday: 3)
Bid.create(employee_id: 4, sunday: 6, monday: 6, tuesday: 6, wednesday: 6, thursday: 1, friday: 1, saturday: 6)
Bid.create(employee_id: 5, sunday: 4, monday: 4, tuesday: 1, wednesday: 1, thursday: 4, friday: 4, saturday: 4)

puts "Done seeding Bids!"

puts "Seeding Shifts..."

Shift.create(day_off: true, bid_id: 1)
Shift.create(day_off: false, bid_id: 2, start_time: "06:30", off_time: "15:00")
Shift.create(day_off: false, bid_id: 3, start_time: "06:00", off_time: "14:30")
Shift.create(day_off: false, bid_id: 4, start_time: "05:30", off_time: "14:00")
Shift.create(day_off: false, bid_id: 5, start_time: "14:30", off_time: "23:00")
Shift.create(day_off: false, bid_id: 6, start_time: "14:00", off_time: "22:30")


puts "Done seeding Shifts!"

puts "Seeding Stations..."

Station.create(name: "Denver", state: "Colorado", city_code: "DEN")
Station.create(name: "Los Angeles", state: "California", city_code: "LAX")
Station.create(name: "Amarillo", state: "Texas", city_code: "AMA")
Station.create(name: "Colorado Springs", state: "Colorado", city_code: "COS")
Station.create(name: "Phoenix", state: "Arizona", city_code: "PHX")

puts "Done seeding Stations!"
# Finished seeding
puts "Done seeding Database!"
puts "🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱"
puts "HEY WAIT THIS DATABASE IS NOW INFESTED WITH SEEDS!!!"
