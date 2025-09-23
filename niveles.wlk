import wollok.game.*
import direcciones.*
import pepita.*
import extras.*
import comidas.*


object nivel1 {

    method inicializar(){

        //se crean las visuales para el nievel 1
       game.addVisual(nido)
       game.addVisual(silvestre)
       game.addVisual(alpiste)
      // game.addVisual(manzana)

        game.addVisual(pepita)

        //se crean botones para mover a pepita en un bloque.
        
        keyboard.up().onPressDo    { pepita.mover(arriba)    }
        keyboard.down().onPressDo  { pepita.mover(abajo)     }
        keyboard.right().onPressDo { pepita.mover(derecha)   }
        keyboard.left().onPressDo  { pepita.mover(izquierda) }
        //keyboard.c().onCollideDo   { pepita.comerAca()       }

        game.onCollideDo(pepita, { algo => pepita.teAtraparon() })
        
    }
              
}
