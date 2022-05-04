extends Node
var SenatorSkoor = 0
var JackSkoor = 0
var JackValik = ""
var Senator = ""
var KiviPaberKaarid = ["kivi", "paber", "Kaarid"]
var bites = 5


func _process(delta):
	if Input.is_action_just_pressed("Let's go!"):
		print("Why won't you die?" )
		
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		


func _ready():
	pass

func mang(playerValik):
	if SenatorSkoor == 10 or JackSkoor == 10:
		$"header".text = "Game Over!"
		get_tree().paused = true
	KiviPaberKaarid.shuffle()
	var senatorValik = ["kivi", "Paber", "Kaarid"]
	senatorValik.shuffle()
	Senator = senatorValik[0]
	var arvutiValik = KiviPaberKaarid[0]
	$"Jack".text = JackValik
	$"Senator".text = Senator
	$"Punktid".text ="Punktid: "+ str(SenatorSkoor)
	$"Punktid(senator)".text ="Punktid: "+ str(JackSkoor)
	
	
	
	
	if Senator == "kivi" and JackValik == "Kaarid":
		$"Vastus".text = "Nanomachines, son!"
		SenatorSkoor += 1
	
	elif Senator == "kivi" and JackValik == "kivi":
		$"Vastus".text = "Why won't you die?!"
	
	elif Senator == "Kivi" and JackValik == "Paber":
		$"Jack2".text = "Alright...The truth, then. You're right about one thing -- I do need capital, and votes! Wanna know why?! I have a dream!"
		JackSkoor += 1
	
		
	elif Senator == "Kaarid" and JackValik == "Kaarid":
		$"Vastus".text = "Why won't you die?!"
	
	elif Senator == "Kaarid" and JackValik == "Kivi":
		$"Jack2".text = "Alright...The truth, then. You're right about one thing -- I do need capital, and votes! Wanna know why?! I have a dream!"
		JackSkoor += 1
	
	
	elif Senator == "Kaarid" and JackValik == "paber":
		$"Jack die".text = "One day every person in this nation will control their OWN destiny. A land of the truly free, dammit. A nation of action, not words. Ruled by strength, not committee!"
		SenatorSkoor += 1 
		"There's no saving America -- we need to pull it out by the roots. ...!"
	
	elif Senator == "paber" and JackValik == "Kaarid":
		$"Jack2".text = "The hell are you thinking...!"
		JackSkoor += 1
		
	
	elif Senator == "Paber" and JackValik == "kivi":
		$"Jack2".text = "The hell are you thinking..."
		JackSkoor += 1

	
	elif Senator == "paber" and JackValik == "paber":
		$"Jack die".text = "There's no saving America -- we need to pull it out by the roots. ...!"
	

func _on_kivi_pressed():
	JackValik = "kivi"
	mang("kivi")
func _on_paber_pressed():
	JackValik = "paber"
	mang("paber")
func _on_krit_pressed():
	JackValik = "Kaarid"
	mang("karid")
