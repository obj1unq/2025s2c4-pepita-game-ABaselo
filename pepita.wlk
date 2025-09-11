import comidas.*


object pepita {
	
	var energia = 100
//	var position = game.at(0,1)
//var position = game.at(-1,1).left(1)
	//var property position = game.at(0,1).up(1).down(3)

	var property position = game.at(0,1)

	//var position = game.at(1,1)



/*
	method position(_position){
	position = _position
	}
	method position()= position
*/

	method text() = "\n Energia: \n" + energia

	method image() = "pepita.png"

	method textColor() = "FF00FF"



	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

}

