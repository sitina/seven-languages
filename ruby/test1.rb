# just print test
puts 'Test'

# set variable name
name = 'My name'

# use variable in text
puts "name is #{name}"

# find index of Ruby in String
a = "hello Ruby"
b = a.index("Ruby")
puts b

# while loop 10 times
x = 0
while (x < 10)
	puts a
	x = x + 1
end

# for loop 10 times 
for i in 1..10 do
	puts "line #{i}"
end

# read from console
puts "Enter your name: "
b = gets 
puts "your name is #{b}"


# make random integer and then guess it
a = rand(10)
x = -1

while (x != a)
	if (x == -1)
		puts "Between 0 - 10"
	else
		if (x > a)
			puts "Smaller one"
		else
			puts "Bigger one"
		end
	end
	puts "Guess the number"
	x = Integer(gets)
end

puts "Right guess!"