import islas2.*

class Pajarraco {
	
	method relajar()
	method conforme(isla)
}

class Aguilucho inherits Pajarraco {
	var property velocidad=20
		
	method fuerza() { return
		if ( velocidad <= 60) { 180}
		else { velocidad*3 }
	}
	method disgusto() { return velocidad*2}
	
	override method relajar() { return velocidad -= 10}
	
	override method conforme(isla) { return isla.alpiste() >= 8  }
	
	method alimentacion(isla) {
		isla.sacaAlpiste()
		velocidad -= 15
	}
}

class Albatro inherits Pajarraco {
	var property peso= 4000
	var property masaMuscular= 600
	
	method fuerza() { return
		if (peso < 6000) { masaMuscular }
		else { masaMuscular*0.5 }
	}
	method disgusto() { return peso += 800 }
	
	method irAlGimnasio() { masaMuscular = masaMuscular + 500; peso = peso + 500 }
	
	override method relajar() { return peso -= 300 }
	
	override method conforme(isla) { return isla.aveMasFuerteQue(self) == 2  }
	
	//duda
	method alimentacion(isla) {
		isla.sacaMaiz();
		peso += 700 ; masaMuscular += 700
		}
}

class Paloma inherits Pajarraco {
	var property ira
	
	method fuerza() { return ira*2 }
	
	method disgusto() { ira += 300}
	
	override method relajar() { return ira -= 50 }
	
	override method conforme(isla) { return isla.avesDebiles().size() == 1 }
	
	method alimentacion(isla) { }
	
	method equilibrarse() {
		if (self.fuerza() <= 700) { self.disgusto() }
		else { self.relajar() }
	}
}
	
class AguiluchoColorado inherits Aguilucho {
	
	override method fuerza() {
		return super() + 400
	}
}

class PalomaTorcaza inherits Paloma {
	var property huevos= 3
	
	override method fuerza() {
		return super() + huevos*100
	}
	override method disgusto() {
		super() ; huevos += 1
	}
}

class PalomaMontera inherits Paloma {
	var property topeDeFuerza = 2000
	
	override method fuerza() { return 
		if (super() > topeDeFuerza ) { topeDeFuerza }
		else { }
	}
}

class PalomaManchada inherits Paloma {
	var nidos = #{}
	
	method agregarNido(nido) { nidos.add(nido) }
	
	override method disgusto() {
		return super(); 
		nidos.add(nido)
	}
	
	override method relajar() { return
		if (nidos.size() > 2) { nidos.grosor() + 1 }
		else { super() }
	}
	
	override method ira(nido) {
		return super() + nido.potencia()
	}
	
}

class Nido {
	var property grosor= 5
	var property resistenciaDelMaterial = 3
	
	method potencia() { return (grosor*resistenciaDelMaterial) +20 }
	
}
