class Person(firstName: String, lastName: String)

val gump = new Person("Forrest", "Gump")

println(gump)

class SecondPerson(first_name: String) {
	println("Outter constructor")

	def this(first_name: String, last_name: String) {
		this(first_name)
		println("Inner constructor")
	}

	def talk() = println("Hi " + first_name)

}

val bob = new SecondPerson("Bob")
val bobTate = new SecondPerson("Bob", "Tate")

bob.talk
bobTate.talk

object TrueRing {
	def rule = println("One ring to rule 'em all.")
}

TrueRing.rule

class Simple(val name: String) {
	def talk(message: String) = println(name + " says " + message)
	def id(): String = name
}

class Extended(override val name: String, val number: Int) extends Simple(name) {
	override def talk(message: String) {
		println(name + " with number " + number + " says " + message)
	}

	override def id(): String = number.toString
}

val extendedPerson = new Extended("Yoda", 4)
extendedPerson.talk("Extend or extend not. there is no try.")
