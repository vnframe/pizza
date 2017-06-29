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

def change(amount)
    available_coins  = [100,50,25,10,5,1]
    coins            = []          # holds list of coins to return
    remaining_amount = amount
    available_coins.each do |coin| # counts down finds biggest coins first
      if ((remaining_amount/coin).to_int > 0)
      then (remaining_amount/coin).to_int.times { coins << coin }
        puts "Remaining Amount: #{remaining_amount.round(2)} | Coin: #{coin}"
        remaining_amount = amount - coins.inject(:+)
      end                         # coins.inject(:+) sums array items
    puts "Your change is $ #{amount.round(2)} >> #{coins}\n\n"
    return coins
end                          
  
    
end
def tax
	tax = 0.06.to_f
end

def payment(x,y)
	print "Please enter the specified amount for payment $"
	pay = gets.chomp.to_f
	if pay == ((x * y) + (x * y) * tax).round(2)
	puts "Thank you!"
 	else 
	change(pay - ((x * y) + (x * y) * tax).round(2))
	puts "Thank you!"

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
print "Total: $" , ((x * y) + (x * y) * tax).round(2), "\n"
payment(x,y)
