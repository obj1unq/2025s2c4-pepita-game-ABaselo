import niveles.*
import wollok.vm.*
import comidas.*
import extras.*
import direcciones.*


object pepita {
	
	const posicionInicial = game.at(0,1)
	const energiaInicial = 100
	const predador = silvestre
	const hogar = nido
	const joules = 9
	
	var property position = posicionInicial
	var energia = energiaInicial
	var property atrapada = false

	
	method inicializar(){
		position = posicionInicial
		energia = energiaInicial
		atrapada = false
	}

	method image() {			
		return "pepita-" + self.estado() + ".png" 
	}

	method text() = "\n Energia: \n" + energia

	method textColor() = "FF00FF"		

	method energia() {
		return energia
	}
	
	method atrapada() = self.estaSobre(predador)

	method enHogar() = self.estaSobre(hogar)

	method estado(){
		return if(!self.puedeVolar()){"gris"}
		else if(self.enHogar()){"grande"}
		else {"base"}
	}	

    method puedeVolar() = energia >= self.energiaNecesaria(1) && not self.atrapada()

	method loQueHayAca() = game.uniqueCollider(self)

	method comerAca() {
	  const comida = self.loQueHayAca()
	  self.comer(comida)
	  comida.andate()
	}

	method teAtraparon(){
		self.atrapada(true)
		game.say(self, "Me atraparon!!")
		self.perder()
	}
	method perder(){
		game.say(self, "perdiste, precionar la R para reniciar")
		keyboard.r().onCollideDo{
			game.clear()
			nivel1.inicializar()
			self.inicializar()
		}
	}

	method estaSobre(alguien)= position == alguien.position()

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

    method redibujarse() {
        game.removeVisual(self)
        game.addVisual(self)
    }



method mover(direccion){
	self.volar(1)
	//position = direccion.siguiente(self)
	position = direccion.siguiente(position)
}


}//fin objeto pepita

