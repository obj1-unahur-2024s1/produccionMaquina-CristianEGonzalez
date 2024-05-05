object registroProduccion {
	const produccionDiaria = [43,18,49,62,33,39]
	
	method algunDiaSeProdujo(cantidad) = produccionDiaria.contains(cantidad)
	
	method maximoValorDeProduccion() = produccionDiaria.max()
	
	method valoresDeProduccionPares() = produccionDiaria.filter( { prod => prod.even() } )
	
	method produccionEsAcotada(n1,n2) = produccionDiaria.all( { prod => prod.between(n1,n2) } )
	
	method produccionesSuperioresA(cuanto) = produccionDiaria.filter( { prod => prod > cuanto } )
	
	method produccionesSumando(n) =	produccionDiaria.map( {prod => prod + n} )

	method totalProducido() = produccionDiaria.sum()
	
	method 	ultimoValorDeProduccion() = produccionDiaria.last()
	
	method cantidadProduccionesMayorALaPrimera() = produccionDiaria.count( { prod => prod > produccionDiaria.first() } )
}
