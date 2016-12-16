require 'sinatra'
require_relative './lib/peaches.rb'
peaches = Peaches.new

get '/' do
	peaches.generar_operacion_fija
	@operacion = peaches.mostrar_operacion
	@puntos =peaches.puntaje
    erb :peaches
end

post '/' do
	
	@valor = params["respuesta"].to_i		
	@rta = peaches.verificar_respuesta @valor
	@puntos =peaches.puntaje
	peaches.generar_operacion_fija
	@operacion = peaches.mostrar_operacion

    erb :peaches

end	
