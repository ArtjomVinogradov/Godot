extends Node
var HP = 100
var SenatorSkoor = 0
var JackSkoor = 0
var JackValik = ""
var Senator = ""
var KiviPaberKaarid = ["kivi", "paber", "Kaarid"]
var bites = 5


func _process(delta):
	$elud.text="Elud: "+str(HP)
	$Stamina.text="bite: "+str(bites)
	if Input.is_action_just_pressed("Let's go!"):
		print("Why won't you die?" )
		bites = 5
	if Input.is_action_just_pressed("bite") and HP>0 and bites>0:
		
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		HP -= rng.randi_range(8,12)
		print ("Nanomachines, son " , HP)
		bites-=1
		print("Your Stamina " , bites)
		
	if HP<0:
		print("Game over!!")


func _ready():
	pass

func mang(playerValik):
	if SenatorSkoor == 10 or JackSkoor == 10:
		$"header".text = "Game Over!"
		get_tree().paused = true
	$elud.text="Elud: "+str(HP)
	KiviPaberKaarid.shuffle()
	var senatorValik = ["Kivi", "Paber", "Käärid"]
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
		$"Tulemus".text = "Why won't you die?!"
	
	elif Senator == "Kivi" and JackValik == "Paber":
		$"Punktid".text = "Alright...The truth, then. You're right about one thing -- I do need capital, and votes! Wanna know why?! I have a dream!"
		JackSkoor += 1
		HP -= 10
		
	elif Senator == "Kaarid" and JackValik == "Kaarid":
		$"Tulemus".text = "Why won't you die?!"
	
	elif Senator == "Kaarid" and JackValik == "Kivi":
		$"Punktid".text = "Alright...The truth, then. You're right about one thing -- I do need capital, and votes! Wanna know why?! I have a dream!"
		JackSkoor += 1
		HP -= 10
	
	elif Senator == "Kaarid" and JackValik == "paber":
		$"Jack die".text = "One day every person in this nation will control their OWN destiny. A land of the truly free, dammit. A nation of action, not words. Ruled by strength, not committee!"
		SenatorSkoor += 1
	
	elif Senator == "paber" and JackValik == "Kaarid":
		$"Punktid".text = "The hell are you thinking...!"
		JackSkoor += 1
		HP -= 10
	
	elif Senator == "Paber" and JackValik == "kivi":
		$"Punktid".text = "There's no saving America -- we need to pull it out by the roots. ...!"
		JackSkoor += 1
		HP -= 10
	
	elif Senator == "paber" and JackValik == "paber":
		$"Tulemus".text = "Why won't you die?!"
	

func _on_kivi_pressed():
	JackValik = "kivi"
	mang("kivi")

func _on_paber_pressed():
	JackValik = "paber"
	mang("paber")
	
func _on_krit_pressed():
	JackValik = "Kaarid"
	mang("karid")
