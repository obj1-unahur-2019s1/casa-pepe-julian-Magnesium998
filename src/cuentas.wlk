object cuentaCorriente {
	var saldo = 0
	
	method extraer(importe) {saldo -= importe}
	method depositar(importe) {saldo += importe}
	method saldo() {return saldo}
}

object cuentaConGastos {
	var saldo = 0
	
	method extraer(importe) {
		saldo -= if (importe <= 1000) {importe + 20}
		else { importe + importe / 50}
		}
	method depositar(importe) {saldo += importe - 20}
	method saldo() {return saldo}
}

object cuentaCombinada {
	var primaria = 0 
	var secundaria = 0
	
	method extraer(importe) {
		const cuantoSacoDeLaPrimaria = importe.min(primaria)
		primaria -= cuantoSacoDeLaPrimaria
		secundaria -= importe  - cuantoSacoDeLaPrimaria
	}
	
	method depositar(importe) {primaria += importe}
	method saldo() {return primaria + secundaria}
}