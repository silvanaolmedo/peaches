class Peaches
	def initialize			
		@operador = 0			
                @operador1 = 0
                @operador2 = 0
                @operacion = 1
                @resultado = 0
		@puntaje1 = 0    
		@puntaje2 = 0             
		@limitePuntos = 3
		@turno =1
	end
	def puntaje1
		@puntaje1
	end
	def puntaje2
		@puntaje2
	end
	def turno
		@turno
	end
	def generar_operacion
		@operador1 = rand(100)
		@operador2 = rand(100)				
		a = ["+","*"]
		@operador = a[rand(a.size)]
	end
	def generar_operacion_fija
		@operador1 = 5
		@operador2 =  4			
		@operador = "+"
	end
	def mostrar_operacion
		operacion=@operador1.to_s + @operador + @operador2.to_s
		return operacion
	end
        def calcular_operacion 
	   if @operador == "+"
		@operacion = 1
		else @operacion = 2
	   end
           if @operacion == 1 
             @resultado= @operador1 + @operador2            
           else
              @resultado= @operador1 * @operador2
	   end
        end
        def verificar_respuesta respuesta
	   calcular_operacion
           if respuesta == @resultado
		if @turno==1
			@puntaje1 += 1
		else 
			@puntaje2 +=1
		end		
              @devolucion = "Respuesta correcta"

           else
	
             @devolucion = "Respuesta incorrecta"
    	   end
	if @limitePuntos == @puntaje1 or @limitePuntos == @puntaje2
		@devolucion= "Ganaste JUGADOR "+@turno.to_s+" !!!!!!! =D"
	end
		if @turno==1
			@turno=2
		else 
			@turno=1
		end
	return @devolucion
	end

	def obtener_resultado
		@resultado
	end
end
