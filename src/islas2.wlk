import aves.*

class Isla {
	var aves=[]
	var property alpiste = 10
	var property maiz = 10
	
	
	method agregarAve(ave) { aves.add(ave) }
	method avesDebiles() { return aves.filter ({ cosa=> cosa.fuerza() < 1000 }) }
	method fuerzaTotal() { return aves.sum ({cosa=> cosa.fuerza() })}
	method esRobusta() { return aves.all ({ cosa=> cosa.fuerza() > 300 })}	
	method terremoto() { aves.forEach({ cosa=> cosa.disgusto() })}
	method tormenta() { return self.avesDebiles().disgusto() }
	
//	method elAveMasFuerte(ave) { return ave. }
	method aveCapitana() { return aves.filter({ cosa => cosa.fuerza().between(1500,3000)})}
	
	method aveMasfuerteQue(ave) { return aves.count({ cosa => cosa.fuerza() > ave.fuerza() })}
	
	method sesionDeRelax() { aves.relajar() } 
	
	method esteEnPaz() { return aves.all ({ cosa => cosa.conforme() })}
	
	method sacaAlpiste() { alpiste -= 3}
	method sacaMaiz() { maiz -= 4}
	
}


