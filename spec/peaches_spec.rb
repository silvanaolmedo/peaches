require_relative '../lib/peaches.rb'

describe "Juego Peaches Math" do

	it "Ingresa al juego" do
		game = Peaches.new
		expect(game.puntaje).to eq(0)
	end
end
