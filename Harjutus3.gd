extends Node
var money = 100
var shit = 60
func _ready():
	int(input("Palju raha sul on?"))
	if money >= 60:
		print("Jah sa saad osta mees")
	elif money >= 50:
		print("Oh mees kahjuks sul pole raha")

