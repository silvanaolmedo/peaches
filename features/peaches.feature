Feature: Pantalla inicial

Scenario: portada
	Given voy a la pantalla inicial
	Then veo "Peaches Math"

Scenario: mostrar puntaje inicial
	Given voy a la pantalla con puntaje
	Then veo "Puntaje = 0"

Scenario: mostrar una suma
	Given voy a la pantalla con suma
	Then veo "4 mas 7"




