import comidas.*


object pepita {
	
	var energia = 100
	var property position = game.at(0,1)
	const predador = silvestre
	const hogar = nido  
	method image() {
		 return "pepita-" + self.estado() + ".png" 
	}	

	method estado(){
		return if(self.atrapada()){"gris"}
		else if(self.enhogar()){"grande"}
		else {"base"}
	}


  method estaSobre(alguien)= position == alguien.position()
	

	




	method text() = "\n Energia: \n" + energia

	method textColor() = "FF00FF"



	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method energiaNecesaria(kms) =  9 * kms 

	method volar(kms) {
		energia -= self.energiaNecesaria(kms)
		//energia -= 9 * kms
		//energia = energia -self.energiaNecesaria(kms)
		//energia = energia - self.energiaNecesaria(kms)
	}
	
	method energia() {
		return energia
	}

	 method atrapada() = self.estaSobre(predador)

	 method enhogar() = self.estaSobre(hogar)

    method redibujarse() {
        game.removeVisual(self)
        game.addVisual(self)
    }

//	var position = game.at(0,1)
//var position = game.at(-1,1).left(1)
	//var property position = game.at(0,1).up(1).down(3)

	

	//var position = game.at(1,1)



/*
	method position(_position){
	position = _position
	}
	method position()= position
*/



}

