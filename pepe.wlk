object pepe {
	var categoria = gerente
    var bonoResultado = nulo
    var bonoPresentismo = normal
    var faltas = 0
    method sueldo(){
        return self.sueldoNeto() + bonoResultado.sueldo(self) + bonoPresentismo.sueldo(self) 
    }
    method categoria(_categoria){
        categoria = _categoria 
    }
    method sueldoNeto(){
        return categoria.sueldo()
    }
    method bonoResultado(_bonoResultado){
        bonoResultado = _bonoResultado
    }
    method bonoResultado(){
        return bonoResultado
    }
    method bonoPresentismo(_bonoPresentismo){
        bonoPresentismo = _bonoPresentismo
    }
    method bonoPresentismo(){
        return bonoPresentismo
    }
    method faltas(_faltas){
        faltas = _faltas
    }
    method faltas(){
        return faltas
    }
}
object gerente {
    var sueldo = 15000
    method sueldo(){
        return sueldo
    }
}

object cadete{
    var sueldo = 20000
    method sueldo(){
        return sueldo
    }
}

object porcentaje{
    method sueldo(empleado){
        return empleado.sueldoNeto() * 0.1
    }
}

object fijo{
    method sueldo(empleado){
        return 800
    }
}
object nulo{
    method sueldo(empleado){
        return 0
    }
}

object normal{
    method sueldo(empleado){
        if (empleado.faltas() == 0){
            return 2000
        } else if (empleado.faltas() == 1){
            return 1000
        }else{
            return 0
        }
    }
}
object ajuste{
    method sueldo(empleado){
        if (empleado.faltas() == 0){
            return 100
        } else{
            return 0
        }
    }
}
object demagogico{
    method sueldo(empleado){
        if (empleado.sueldoNeto() < 18000){
            return 500
        }else{
            return 300
        }
    }
}

object moria {
    var sueldo = 0
    var bonoResultado = nulo
    var categoria = cadete
    method sueldo(){
        return self.sueldoNeto() + (bonoResultado.sueldo(self) * 1.3)
    }
    method sueldoNeto(){
        return categoria.sueldo() * 1.3
    }
    method categoria(_categoria){
        categoria = _categoria
    }
    method bonoResultado(_bonoResultado){
        bonoResultado = _bonoResultado
    }
    method bonoResultado(){
       return bonoResultado
    }
    method categoria(){
        return categoria
    }
}

object vendedor{
    var sueldoNeto = 16000
    var muchasVentas = false
    method sueldo(){
        if(muchasVentas ){
            return sueldoNeto * 0.25
        }else{
            return sueldoNeto
        }
        
    }
    method activarAumentoPorMuchasVentas(){
        muchasVentas = true
    }
    method desactivarAumentoPorMuchasVentas(){
        muchasVentas = false
    }
}

object medioTiempo {
  var categoriaBase = cadete
  method categoriaBase(_categoriaBase){
     categoriaBase = _categoriaBase
  }
  method sueldo(){
    return categoriaBase.sueldo() / 2
  }
  
}

object roque{
    var sueldoNeto = 28000
    var bonoResultado = nulo
    method sueldo(){
        return sueldoNeto + bonoResultado.sueldo(self) + 9000
    }
    method bonoResultado(_bonoResultado){
        bonoResultado = _bonoResultado
    }
}

object ernesto{
    var companero = pepe 
    var bonoPresentismo = nulo
    method faltas(){
        return 0
    }
    method sueldoNeto(){
        return companero.sueldoNeto()
    }
    method sueldo(){
        return self.sueldoNeto() + bonoPresentismo.sueldo(self)
    }
    method bonoPresentismo(_bonoPresentismo){
        bonoPresentismo = _bonoPresentismo
    }
    method companero(_companero){
        companero = _companero
    }
}