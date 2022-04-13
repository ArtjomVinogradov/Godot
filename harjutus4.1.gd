#4.1
extends Node
var pikk = 0
var nimi = ""
var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
func _ready():
	print("Siin on ", len(players), " Mängijad")
	print(players[0])
	players.sort()
	players.erase("Reyes")
	players.append("Artjom")
	for player in players:
		
		if len(player)>pikk:
			pikk = len(player)
			nimi = player
		print(player)
	print(pikk)
	print(nimi)
		
#4.2
	print(player.gold[2])

var player = {"gold":[5,3,453245], "shit":[4,5,756]}
player.gold[2] = player.gold[2]*5

