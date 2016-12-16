class Peaches
	def initialize
		@puntajeA = 0
                @operador1 = 0
                @operador2 = 0
                @operacion = 1
                @resultado = 0
               
                
	end

	def puntaje
		@puntajeA
	end

	def generar_operacion
		"4+5"
	end
        def calcular_operacion 
 	   @operador1 = 5
           @operador2 = 4
           @operacion = 1
           if @operacion == 1 
             @resultado= @operador1 + @operador2
             
           else
              @resultado= @operador1 * @operador2
           end
        end

        def verificar_respuesta respuesta
           if respuesta == @resultado
              @devolucion = "Respuesta correcta"
           else
             @devolucion = "Respuesta incorrecta"
    	   end
        end
          
            
end
