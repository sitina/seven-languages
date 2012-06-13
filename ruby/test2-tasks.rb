a = []

for i in 0..15 do
	a.push(i)
end

puts a

a.each { |v| puts v } 





puts('regexp test')
# ruby regexp test

fileName = 'test2-tasks.rb'

def fileReadTest(fileName, pattern)
	counter = 1
	file = File.new(fileName, "r")
	while (line = file.gets)
		if (/#{pattern}/.match(line) != nil) 
			puts "#{counter}: #{line}"
			counter = counter + 1
		end
	end
	file.close
end

fileReadTest(fileName, 'counter')