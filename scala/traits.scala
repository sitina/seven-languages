// trait is something like interface with implementation of important functionality
// still gonna figure out how/if could be overriden in "implementing" classes

class Person(val name : String)

trait Nice {
	def greet() = println("Hudla dudla :)")
}

class Character(override val name : String) extends Person(name) with Nice

val flanders = new Character("Ned")
flanders.greet
