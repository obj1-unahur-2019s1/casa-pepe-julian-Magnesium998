import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any{comida => comida.esComida()}
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	
	method esDerrochona() {
		return cosas.sum{precio => precio.precio()} >= 9000
	}
	
	method compraMasCara() {
		return cosas.max{cosa => cosa.precio()}
	}
	
	method electrodomesticosComprados() {
		return cosas.filter{cosa => cosa.esElectrodomestico()}
	}
	
	method malaEpoca() {
		return cosas.all{cosa => cosa.esComida()}
	}
	
	method queFaltaComprar(lista) {
		return lista.asSet().diference(cosas.asSet())
	}
	
	method faltaComida() {
		return cosas.count{cosa => cosa.esComida()} < 2
	}
}