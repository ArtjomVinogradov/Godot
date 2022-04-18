#Artjom Vinogradov
#18.04.22
extends Node

var enemyname = "Seimens"
var HP = 100
var dmg = 2
var salv = 5
var score = 0
var counter = 0

func _process(delta):
	if Input.is_action_just_pressed("reloading"):
		print("cover me I'am reloading" )
		salv = 5
	if Input.is_action_just_pressed("shoot") and HP>0 and salv>0:
		
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		HP -= rng.randi_range(8,12)
		print ("Tema HP mees, Fire " , HP)
		salv-=1
		print("Your ammo mees " , salv)
		
	if HP<0:
		print("game over!!")
	
