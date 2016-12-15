Feature: Pantalla inicial

Scenario: portada
	Given voy a la pantalla inicial
	Then veo "Peaches Math"

Scenario: mostrar una suma
	Given voy a la pantalla con suma
	Then veo "4 mas 7"


