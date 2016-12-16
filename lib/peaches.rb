class Peaches
	def initialize			
		@operador = 0			
                @operador1 = 0
                @operador2 = 0
                @operacion = 1
                @resultado = 0               
	end
	def puntaje
		0
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
		#generar_operacion
		generar_operacion_fija
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
              @devolucion = "Respuesta correcta"
           else
             @devolucion = "Respuesta incorrecta"
    	   end
	end
	def obtener_resultado
		@resultado
	end
end
