object pepe {
	var categoria = gerente
    var bonoR = nulo
    var bonoP = normal
    var faltas = 0
    method sueldo(){
        return self.sueldoNeto() + bonoR.sueldo(self) + bonoP.sueldo(self) 
    }
    method categoria(_categoria){
        categoria = _categoria 
    }
    method sueldoNeto(){
        return categoria.sueldo()
    }
    method bonoR(_bonoR){
        bonoR = _bonoR
    }
    method bonoR(){
        return bonoR
    }
    method bonoP(_bonoP){
        bonoP = _bonoP
    }
    method bonoP(){
        return bonoP
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
            return 2000
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
