#creo la clase "home"
require 'pry'
class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end


#empieza el ejercicio

homes = [
	Home.new("Juan", 'Málaga', 2, 1000),
	Home.new('Alicia', 'Madrid', 4, 1000),
	Home.new('Inés', 'Madrid', 5, 1200),
	Home.new('Jose', 'Barcelona', 4, 2000),
	Home.new('Tom', 'Oxford', 3, 2100),
	Home.new('Kate', 'London', 5, 3400),
	Home.new('Paolo', 'Milano', 4, 1800),
	Home.new('Antonio', 'Murcia', 8, 3000),
	Home.new('Marie', 'Paris', 2, 2500)
]


puts 'What city would you like to go to:'
lista = homes.reduce("") do |memo, hm|
	if memo.include?(hm.city)
		memo
	else
		memo == "" ? hm.city : memo+", #{hm.city}"
	end
end

puts lista

city = gets.chomp

puts "Here are the price and capacity of the houses available in #{city}:"
(homes.select{|hm| hm.city == city}).each{|hm|
	puts "#{hm.capacity} pax. - #{hm.price}€"
}
	



