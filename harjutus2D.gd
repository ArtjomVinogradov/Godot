extends Node2D


var playerName = "Строго без тильта парни"
var eludearv = 0.5
func _ready():
	print(playerName)
	print(eludearv)
	print(len(playerName))
	eludearv +=2
	print(eludearv)

	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randi_range(0,19)
	print(my_random_number)
