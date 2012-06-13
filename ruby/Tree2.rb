class Tree2
	
	attr_accessor :nodes

	def initialize(nodes={})
		@nodes = nodes
	end

	def visit_all(&block)
		# visit &block
		if (block.class.method_defined? :each)
			block.each { |k, v| Tree2.new(v).visit_all(&block) }
		else
			puts "aaa" #&block
		end
	end

	def visit(&block)
		if (nodes.class.method_defined? :each)
			nodes.each { |k, v| puts k visit_all( v) }
		else
			puts "tree2Node #{nodes}"
		end
		# block.call self
	end

end
