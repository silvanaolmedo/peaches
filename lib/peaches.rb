class Peaches
	def initialize
		@puntajeA = 0
		@valorA =  0
		@valorB = 0				
		@operador = 0			
	end

	def generar_operacion
		@puntajeA = 0
		@valorA = rand(100)
		@valorB = rand(100)				
		a = ["+","-"]
		@operador = a[rand(a.size)]
	end
	def mostrar_operacion
		generar_operacion
		operacion=@valorA.to_s + @operador + @valorB.to_s
		return operacion
	end

end
