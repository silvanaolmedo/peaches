Feature: Pantalla inicial

Scenario: portada
	Given voy a la pantalla inicial
	Then veo "Peaches Math"

Scenario: mostrar puntaje inicial
	Given voy a la pantalla con puntaje
	Then veo "Puntaje jugador 1 = 0 y Puntaje jugador 2 = 0"

Scenario: mostrar una suma
	Given voy a la pantalla con suma
	Then veo "5+4"


Scenario: mostrar input box para ingresar respuesta
	Given voy a la pantalla con input box
	When ingreso en respuesta	0
	Then veo "Respuesta incorrecta"


Scenario: mostrar resultado
	Given voy a la pantalla con una  cuenta
	When ingreso en respuesta 9
	Then veo "Respuesta correcta" y genera nueva operacion


