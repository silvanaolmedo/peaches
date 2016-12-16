require 'sinatra'
require_relative './lib/peaches.rb'
peaches = Peaches.new

get '/' do
	peaches.generar_operacion_fija
	@operacion = peaches.mostrar_operacion
	@puntos1 =peaches.puntaje1
	@puntos2 =peaches.puntaje2
	@turno =peaches.turno
    erb :peaches
end

post '/' do
	
	@valor = params["respuesta"].to_i		
	@rta = peaches.verificar_respuesta @valor
	@puntos1 =peaches.puntaje1
	@puntos2 =peaches.puntaje2
	peaches.generar_operacion_fija
	@operacion = peaches.mostrar_operacion
	@turno =peaches.turno
    erb :peaches

end	
