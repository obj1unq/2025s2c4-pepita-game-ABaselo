import pepita.*

object nido {

    const property position = game.at(8,8)

    //const property position = game.at(game.width(),game.height())
    //ancho y alto del tablero
  //method position() = game.at(10, 10)

  method image() = "nido.png"
}

object silvestre {
   const presa = pepita
   
   method image() = "silvestre.png"

   method position() = game.at(self.x(), 0)

   method x() = 3.max(presa.position().x())
   // method x() = presa.position().x().max(3)
    //if(presa.position().x()>=3){presa.position().x()}

/*
   x = 1 = 3
   x = 4 = 4
   x = 1 = 3
   x = 2 = 3
   x = 100 = 100
   */
}


