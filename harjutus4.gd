#Artjom vinogradov
#12.04.2022
extends Node


var enemyname = "Darkeater Midir"
var HP = 100



func _ready():
	print(enemyname)

	while HP > 0:
		var random = RandomNumberGenerator.new()
		random.randomize()
		var dmg=random.randi_range(8, 15)
		HP -= dmg
		print("Tema eludearv: ",  HP)
		print("Sinu damage: ", dmg)
			
				
