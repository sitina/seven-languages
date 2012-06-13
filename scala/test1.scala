def whileLoop {
	var i = 0
	while (i < 3) {
		println(i) 
		i +=1
	}
}

def forLoop {
	println("for loop test")
	for (i <- 0 until args.length) {
		println(args(i))
	}
}

def rubyStyleForEach {
	args.foreach {
		arg => println(arg)
	}
}

whileLoop
forLoop
rubyStyleForEach
