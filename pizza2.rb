def veggies
	veggies = ["peppers", "onions", "spinach"].sample            #sample method randomly selects items of an array
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
	x = gets.chomp.to_i #gets user input (.chomp eliminates the need for new line) and changes the result to an integer
end

def change(amount)
    available_coins  = [100,50,25,10,5,1] #sets coin values
    coins            = []          # holds list of coins to return
    remaining_amount = amount
    available_coins.each do |coin| # counts down finds biggest coins first
      if ((remaining_amount/coin).to_int > 0)
				(remaining_amount/coin).to_int.times { coins << coin }
        puts "Remaining Amount: #{remaining_amount.round(2)} | Coin: #{coin}"
        remaining_amount = amount - coins.inject(:+)
      end                         # coins.inject(:+) injects values into empty array and sums array items
    puts "Your change is $ #{amount.round(2)} >> #{coins}\n\n"
    return coins
end


end
def tax
	tax = 0.06.to_f#sets tax rate and makes it a float
end

def payment(x,y, d)#variables are passed in using an argument
	print "Please enter the specified amount for payment $"
	pay = gets.chomp.to_f#prompts user for payment and converts input into float
	if pay == total(x,y) #if pay is exact change, the transaction is complete
	puts "Thank you!"
elsif
	pay == ((total(x,y) + 5) * 1.15).round(2) #if the payment is exact change with delivery fee and tip, transction is comeplete
	puts "Thank you!"
elsif
	pay > ((total(x,y) + 5) && d == "deliviered"
	change(pay - ((total(x,y) + 5) * 1.15).round(2)) #change function called if exact change is not given and pizza is delivered
																			#passes in the amount needed to be exchanged via an argument, replacing "amount" variable
	else
		pay > total(x,y)

		change(pay - total(x,y)) #if not delivered and change is not exact, change function is called.

	puts "Thank you!"



	end
end
def total(x,y)
  ((x * y) + (x * y) * tax).round(2)
end

def delivered?
	puts "Would you like your pizza delivered?"
	p delivery = ["delivered", "not_delivered"].sample #randomly decides if pizza will be delivered or not
end

pizza = 0 #sets counter for pizza

x = how_many? #x variable set to the result of how_many? function (from user input)

x.times do #loops however many times the number of pizzas are entered

pizza += 1 #ads one every loop
puts "PIZZA " + pizza.to_s #prints pizza number
puts size
puts crust_type       #call methods for randomized pizzas
puts sauce
puts cheese
puts veggies
puts meat
end

puts ""
y = 9.99 #sets flat price

print "Your Subtotal is $"
puts total(x,y) #prints total


if delivered? == "delivered"
	print "Your total is $"
	puts ((total(x,y) + 5) * 1.15).round(2) #ads delivery fee and tip, prints total
else
	print "Your total is $"
	puts total(x,y) #if not delivered, total is reprints total
end

payment(x,y, delivered?) #calls payment method and passes in variables
