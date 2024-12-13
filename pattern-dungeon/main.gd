extends Control


var current_pattern = []
var pattern_view = []
var answer = []

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_generate_pressed() -> void:
	current_pattern.clear()
	pattern_view.clear()
	
	pattern_view = current_pattern.duplicate()
	for i in range(3):
		randomize()
		current_pattern.append(randi_range(1,9))
	print(current_pattern)

func play_pattern():
	
	#pattern_view = current_pattern.duplicate()
		
	if not pattern_view.is_empty():
		match pattern_view[0]:
			1:
				%"1".text = "1"
				$Timer.start()
			2:
				%"2".text = "2"
				$Timer.start()
			3:
				%"3".text = "3"
				$Timer.start()
			4:
				%"4".text = "4"
				$Timer.start()
			5:
				%"5".text = "5"
				$Timer.start()
			6:
				%"6".text = "6"
				$Timer.start()
			7:
				%"7".text = "7"
				$Timer.start()
			8:
				%"8".text = "8"
				$Timer.start()
			9:
				%"9".text = "9"
				$Timer.start()
		print(pattern_view.pop_front())
	else:
		return

func clear_names():
	%"1".text = ""
	%"2".text = ""
	%"3".text = ""
	%"4".text = ""
	%"5".text = ""
	%"6".text = ""
	%"7".text = ""
	%"8".text = ""
	%"9".text = ""
	$Slight.start()


func _on_generate_2_pressed() -> void:
	if not current_pattern.is_empty():
		pattern_view = current_pattern.duplicate()
		play_pattern()
	else:
		print("no pattern")
	#$Play.start()


func _on_play_timeout() -> void:
	if not pattern_view.is_empty():
		play_pattern()
	else:
		$Play.stop()


func _on_timer_timeout() -> void:
	clear_names()


func _on_slight_timeout() -> void:
	play_pattern()


func _on_one_pressed() -> void:
	answer.append(1)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_two_pressed() -> void:
	answer.append(2)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")
		
func _on_three_pressed() -> void:
	answer.append(3)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_four_pressed() -> void:
	answer.append(4)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_five_pressed() -> void:
	answer.append(5)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_six_pressed() -> void:
	answer.append(6)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_seven_pressed() -> void:
	answer.append(7)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_eight_pressed() -> void:
	answer.append(8)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")

func _on_nine_pressed() -> void:
	answer.append(9)
	var index = answer.size() - 1
	if current_pattern[index] == answer[index]:
		if current_pattern.size() == answer.size():
			print("nice!")
			answer.clear()
			current_pattern.clear()
		else:
			return
	else:
		answer.clear()
		print("wrong")
