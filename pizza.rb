def veggies
	veggies = ["peppers", "onions", "spinach"].sample 
end

def crust_type
  crust_type = ["plain crust", "cheesy crust", "italian herbs crust"].sample
end

def cheese
   cheese = ["mozzarella", "cheddar", "blend"].sample
end

def sauce
	sauce = ["original marinara", "spicy marinara", "alfredo", "BBQ"].sample
end

def meat
	meat = ["pepperoni", "sausage", "bacon", "ham", "chicken"].sample
end

def size
	size = ["med", "large", "extra large", "super mega large"].sample
end


def how_many?
	print "how many pizzas would you like?"
	x = gets.chomp.to_i
end

def payment(x,y)
	print "Please enter the specified amount for payment $"
	pay = gets.chomp.to_f
	if pay == (x * y.to_f)
	puts "Thank you!"
 	else
	puts "sorry, exact change only"
	end
end

pizza = 0
x = how_many?

x.times do 

pizza += 1
puts "PIZZA " + pizza.to_s
puts size
puts crust_type
puts sauce
puts cheese
puts veggies
puts meat
end

puts ""
y = 9.99
print "Total: $" , (x * y.to_f), "\n"
payment(x,y)

