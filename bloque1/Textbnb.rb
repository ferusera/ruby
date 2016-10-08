#creo la clase "home"
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
	Home.new('Alicia', 'Madrid', 4, 1750),
	Home.new('Inés', 'Badajoz', 5, 1200),
	Home.new('Jose', 'Barcelona', 4, 2000),
	Home.new('Tom', 'Oxford', 3, 2100),
	Home.new('Kate', 'London', 5, 3400),
	Home.new('Paolo', 'Milano', 4, 1800),
	Home.new('Antonio', 'Murcia', 8, 3000),
	Home.new('Marie', 'Paris', '2', 2500)
]

#iteración 1
homes.each{|hm|
	puts "#{hm.name}, #{hm.city}, #{hm.capacity} pax., #{hm.price}€"
	}

#iteración 2
puts "Do you want to sort by price (Y/N)?"


if gets.chomp == "Y" 
	puts "From low to high (Y/N)?"

	if gets.chomp == 'Y' #ordenar por precio de menor a mayor
		puts "Here are your houses, sorted by price, from low to high:"
		(homes.sort{|hm1, hm2| hm1.price <=> hm2.price}).map{|hm|
			puts "#{hm.name} - #{hm.price}€"
		}

	else #ordenar por precio de mayor a menor
		puts "Here are your houses, sorted by price, from high to low:"
		(homes.sort{|hm1, hm2| hm2.price <=> hm1.price}).map{|hm|
			puts "#{hm.name} - #{hm.price}€"
		}
	end

else #ordenar por capacidad
	puts "Here are your houses, sorted by capacity"
	(homes.sort{|hm1, hm2| hm1.capacity <=> hm2.capacity}).map{|hm|
		puts "#{hm.name} - #{hm.capacity} pax."
	}
end


#iteración 3
puts 'What city would you like to go to:'
homes.each{|hm| puts "#{hm.city}?"}

city = gets.chomp

puts "Here are the price and capacity of the houses available in #{city}:"
(homes.select{|hm| hm.city == city}).each{|hm|
	puts "#{hm.capacity} pax. - #{hm.price}€"
	}
