class TicTacToe(val score: List[List[String]], val winningLine: Int) {

	def printTable() {
		score.foreach {
			line => printLine(line)
		}
	}

	def printLine(line: List[String]) {
		line.foreach {
			item => print(item + "\t")
		}
		println()
	}

	def getWinner() : String = {

		for (row <- 0 to (score.length - winningLine)) {
			for (col <- 0 until score(row).length) {
				if (getDown(score(row)(col), row, col)) return score(row)(col)
			}
		}

		for (col <- 0 to (score(0).length - winningLine)) {
			for (row <- 0 until score.length) {
				if (getRight(score(row)(col), row, col)) return score(row)(col)
			}
		}
		
		for (i <- 0 to (score(0).length - winningLine)) {
			if (getDiagonal(score(i)(i), i)) return score(i)(i);
		}

		return "no winner yet"
	}

	private def getDown(character: String, startRow: Int, column: Int) : Boolean = {
		if (startRow + winningLine > (score.length - startRow + 1)) return false;
		if (character == "") return false;

		for (i <- startRow until (startRow + winningLine)) {
			if (score(i)(column) != character) return false;
		}

		return true;
	}

	private def getRight(character: String, row: Int, startColumn: Int) : Boolean = {
		if (startColumn + winningLine > (score(0).length - startColumn + 1)) return false;
		if (character == "") return false;

		for (i <- startColumn until (startColumn + winningLine)) {
			if (score(row)(i) != character) return false;
		}

		return true;
	}

	private def getDiagonal(character: String, row: Int) : Boolean = {
		if (row + winningLine > (score(0).length - row + 1)) return false;
		if (character == "") return false;

		for (i <- row until (row + winningLine)) {
			if (score(i)(i) != character) return false;
		}

		return true;
	}

}

val line1 = List("x", "", "x")
val line2 = List("", "o", "")
val line3 = List("x", "", "o")

val lines = List(line1, line2, line3)

val ttt = new TicTacToe(lines, 2)
ttt.printTable
println("Winner is " + ttt.getWinner())
