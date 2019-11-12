import aves.*

class Islas {
	var aves=[]
	
	var property maiz = 10
	var property alpiste = 10
	
	var property estaEnPaz= false
	
	method agregarAve(ave) { aves.add(ave) }
	
	method avesDebiles() { return aves.filter({ cosa=> cosa.fuerza() < 1000 })}
	
	method fuerzaTotal() { return aves.sum({ cosa=> cosa.fuerza() })}
	
	method esRobusta() { return aves.all ({ cosa=> cosa.fuerza() > 300 })}
	
	method terremoto() { return aves.forEach({ cosa=> cosa.disgusto() })}
	
	method tormenta() { return self.avesDebiles().disgusto() }
	
	method aveMasfuerteQue(ave) { return aves.count({ cosa => cosa.fuerza() > ave.fuerza() })}
	
	method alimentacion(ave) { ave.queTomeAlimento(self) }
	
	method aveCapitana() { }
	
	method sesionDeRelax() { aves.relajar() }
	
}