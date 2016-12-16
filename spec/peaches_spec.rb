require_relative '../lib/peaches.rb'

describe "Juego Peaches Math" do

	it "Ingresa al juego" do
		game = Peaches.new
		expect(game.puntaje).to eq(0)
	end

	it "Genera y muestra operacion" do
		game = Peaches.new
		expect(game.mostrar_operacion).to eq("5+4")
	end
        
     	it "calcular_operacion" do
             game = Peaches.new
	     game.generar_operacion_fija
	     game.calcular_operacion 
             expect(game.obtener_resultado).to eq(9)
        end
	
	it "Verificar respuesta" do
  	    game = Peaches.new
	    game.generar_operacion_fija
     	    game.calcular_operacion 
	    expect(game.verificar_respuesta 9).to eq "Respuesta correcta"
     	end
end
