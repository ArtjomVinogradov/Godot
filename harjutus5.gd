extends Node

var time = 40
var timepay = 2



func _ready():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randi_range(0,40)
	
	print(my_random_number)
	if time>=my_random_number:
		timepay = my_random_number*2
		print("man your payment: ", timepay)
	else:
		if time<=my_random_number:
			timepay = 40*2*my_random_number*1.5
		print(timepay)






	print("man see on hinded ",hinded(ballid))
	print("man see on kõik arvud ",koikarvud(ballid))
	print("man this is your keskmine arv ",keskminearv(ballid))

var ballid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

func keskminearv(b):
	var arv = len(b)
	var sum = 0
	for i in b:
		sum += i
	var kesk = sum / arv
	return kesk
	
func koikarvud(v):
	for i in v:
		print(i)
	return v



func hinded(c):
	for i in c:
		if i >= 90:
			print(i, " S - 5")
		elif i >= 75:
			print(i, " A - 4")
		elif i >= 50:
			print(i, " C - 3")
		else:
			print(i, " D - 2")
