// porque las acciones no quedan registradas cuando creo un objeto de una clase???? ejemplo de disgusto con o sin return, sin return es una ccion que no queda registrada en la velocidad

class Aves {
	var property fuerza
	
	method disgusto()
	method relajar()
	method estaConforme(isla)
	method queTomeAlimento(isla)
}

class Aguiluchos inherits Aves {
	var property velocidad = 20
	var property alpiste
	
	override method fuerza() { return
		if (velocidad <= 60) { 180 }
		else { velocidad*3 }
	}
	override method disgusto() { return velocidad*2 }
	
	override method relajar() { return velocidad -10 }
	
	override method estaConforme(isla) { return isla.alpiste() >= 8 }
	
	override method queTomeAlimento(isla) { return
		isla.alpiste() - 3 and
		self.alpiste() + 3 and
		self.velocidad() + 15
	}
}

class Albatros inherits Aves {
	var property peso= 400
	var property masaMuscular= 600
	var property maiz
	
	override method fuerza() { return
		if (peso <= 600) { masaMuscular}
		else { masaMuscular*0.5}
	}
	override method disgusto() { return peso += 800 }
	
	method irAlGimnasio() { return self.peso() + 500 and self.masaMuscular() + 500 }
		/// en la consola esto no anda
	override method relajar() { return peso - 300 }
	
	override method estaConforme(isla) { return isla.aveMasfuerteQue(self) <= 2 } 
	
	override method queTomeAlimento(isla) { return
		isla.maiz() - 4 and
		self.maiz() + 4 and
		self.masaMuscular() + 700 and
		self.fuerza() +700
	}
} 

class Palomas inherits Aves {
	var property ira = 200
	
	override method fuerza() { return ira*2}
	
	override method disgusto() { return ira + 300}
	
	override method relajar() { return ira - 50 }
	
	override method estaConforme(isla) { return isla.avesDebiles() == 1 }
	
	override method queTomeAlimento(isla) { }
	
	method equilibrarse() { return
		if (self.fuerza() <= 700) { self.disgusto() }
		else { self.relajar() }
	}
}

class AguiluchosColorados inherits Aguiluchos {
	
	override method fuerza() {
		return super() +400
	}
}

class PalomaTorcaza inherits Palomas {
	var property huevos = 3
	
	override method fuerza() { 
		return super() + huevos*100
	}
	override method disgusto() {
		return super() and huevos + 1
	}
}

class PalomaMontera inherits Palomas { 
	var property topeDeFuerza = 2000
	
	override method fuerza() { return
		super().max(topeDeFuerza) 
	}
	
}

class PalomaManchada inherits Palomas {
	var nidos = #{}
	
		
}

class Nidos {
	
}