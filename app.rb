require 'sinatra'
require_relative './lib/peaches.rb'
peaches = Peaches.new

get '/' do
	@operacion = peaches.mostrar_operacion
    erb :peaches
end

post '/' do
		
    @valor = params["respuesta"].to_i		
		@peaches = Peaches.new
		@peaches.generar_operacion_fija
		@peaches.calcular_operacion
		@rta = @peaches.verificar_respuesta @valor
    erb :peaches
end
