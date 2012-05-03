puts 'test 2'

fileName = 'test2.rb'

# first possibility how to read file - w/o code block
counter = 1
file = File.new(fileName, "r")
while (line = file.gets)
	puts "#{counter}: #{line}"
	counter = counter + 1
end
file.close

# second possibility: inside code block
counter = 1
File.open(fileName, "r") do |infile|
	while (line = infile.gets)
		puts "#{counter}: #{line}"
		counter = counter + 1
	end
end

# got an array and want to make hash out of it
a = [1, 2, 3]

b = Hash[*a.collect { |v|
    [v, v*2]
}.flatten]

# print both array and hash
puts a
puts b

a.each do |value| puts "do-end: value = #{value}" end
a.each { |value| puts "braces: value = #{value}" }

b.each do |key, value| puts "do-end: #{key} == #{value}" end
b.each { |key, value| puts "braces: #{key} == #{value}" }

array = ["A", "B", "C"]
array.each_with_index {|x, y| puts "#{x} => #{y}" }

# array as a stack
a.push(4)
a.push(5)
a.push(6)
puts a.pop
puts a.pop
puts a.pop

# list all array methods
# puts a.methods

require File.dirname(__FILE__) + '/Tree'
ruby_tree = Tree.new("Ruby", [Tree.new("Reia"), Tree.new("MacRuby")])

puts "visiting a node: "
ruby_tree.visit { |node| puts node.node_name }

puts "visiting all nodes: "
ruby_tree.visit_all { |node| puts node.node_name }


require File.dirname(__FILE__) + '/Tree2'
puts
puts "tree 2"

tree2 = Tree2.new({'a' => { 'b' => 'fff', 'c' => 'ddd'}, 'aa' => { 'bb' => 'cc', 'dd' => 'dd'}})
tree2.visit_all { |k| puts k }