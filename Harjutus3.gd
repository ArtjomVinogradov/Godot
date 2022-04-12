extends Node

func _ready():
	
	var l = 10
	var b = 15
	var Pindala = l*b
	
	var money = 100
	var shit = 205
	int("Palju raha sul on?")
	if money >= shit:
		print("Jah sa saad osta mees")
	elif money <= shit:
		print("Oh mees kahjuks sul pole raha, sul on veel vaja ", shit - money, " raha")
	print(Pindala)



	

