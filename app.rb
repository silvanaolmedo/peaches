require 'sinatra'
require_relative './lib/peaches.rb'
peaches = Peaches.new

get '/' do
	@operacion = peaches.mostrar_operacion
    erb :peaches
end

post '/' do
		
    @valor = params["respuesta"].to_i
		if @valor ==  9
			@rta = "Respuesta correcta"	
			@operacion = peaches.mostrar_operacion
		else
			@rta = "Respuesta incorrecta"	
			@operacion = peaches.mostrar_operacion
		end
    erb :peaches
end
