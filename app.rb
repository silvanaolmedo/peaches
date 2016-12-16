require 'sinatra'
require_relative './lib/peaches.rb'

get '/' do
	@peaches = Peaches.new		
	@operacion = @peaches.generar_operacion
    erb :peaches
end

post '/' do
		
		
    @valor = params["respuesta"].to_i
		if @valor == 9
			@rta = "Respuesta correcta"
		else
			@rta = "Respuesta incorrecta"
		end
    erb :peaches
end
