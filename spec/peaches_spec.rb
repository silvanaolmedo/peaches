require_relative '../lib/peaches.rb'

describe "Juego Peaches Math" do

	it "Ingresa al juego" do
		game = Peaches.new
		expect(game.puntaje).to eq(0)
	end

	it "Genera y muestra operacion" do
		game = Peaches.new
		expect(game.generar_operacion).to eq("4+5")
	end
        
     	it "Calcular operacion" do
             game = Peaches.new
             expect(game.calcular_operacion).to eq(9)
        end
	
	it "Verificar respuesta" do
  	    game = Peaches.new
     	    game.calcular_operacion 
	    expect(game.verificar_respuesta 9).to eq "Respuesta correcta"
     	end
end
