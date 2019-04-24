import destinos.*
import paquete.*

object mensajeria {
	method contratar(alguien) {
 //
 	}
}

object roberto {
	var pesoRoberto=0
	var transporteRoberto=bicicleta
	method puedeLlamar(){ return false }
	method transporteAUtilizar(transporte){ transporteRoberto=transporte }
	method transporte(){ return transporteRoberto }
	method puedeEntregar(){ return paquete.estaPago() && paquete.destino().dejaPasar(self.peso(),self.puedeLlamar()) }
	method pesa(peso){ pesoRoberto=peso }
	method peso(){ return pesoRoberto+transporteRoberto.peso() }
}



object chukNorris {
	method puedeEntregar(){ return paquete.estaPago() && paquete.destino().dejaPasar(self.peso(),self.puedeLlamar()) }
	method puedeLlamar(){ return true }
	method peso (){ return 900 }
}




object neo {
	var creditoChuk=false
	method puedeEntregar(){ return paquete.estaPago() && paquete.destino().dejaPasar(self.peso(),self.puedeLlamar()) }
	method puedeLlamar(){ return creditoChuk }
	method credito(credito){ creditoChuk=credito }
	method peso(){ return 0 }
}




object bicicleta {
	method peso(){ return 8	}
}

object camion {
	var acoplados=1
	method cantidadAcoplados(cantidadAcoplados){acoplados=cantidadAcoplados }
	method peso(){return 500*acoplados}
}