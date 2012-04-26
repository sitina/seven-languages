puts 'Test'
name = 'My name'
puts "name is #{name}"

a = "hello Ruby"
b = a.index("Ruby")
puts b

x = 0
while (x < 10)
	puts a
	x = x + 1
end

puts "Enter your name: "
b = gets 
puts "your name is #{b}"



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