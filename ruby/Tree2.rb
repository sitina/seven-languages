class Tree2
	
	attr_accessor :nodes

	def initialize(nodes={})
		@nodes = nodes
	end

	def visit_all(&block)
		visit &block
		if (nodes.class.method_defined? :each)
			nodes.each { |k, v| Tree2.new(v).visit_all &block }
		end
	end

	def visit(&block)
		if (nodes.class.method_defined? :each)
			nodes.each { |k, v| puts k }
		end
		# block.call self
	end

end