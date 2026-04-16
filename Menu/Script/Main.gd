extends Control

func _ready():
	
	$ScrollContainer / VBoxContainer / HBoxContainer / SnakeButton.grab_focus()

func _on_SnakeButton_pressed():
	
	
	var chemin_script = "/home/bornearcade/arcade/sh/stsnake.sh"
	lancer_fichier_sh(chemin_script)

func _on_FlappyBirdButton_pressed():
	
	var chemin_script = "/home/bornearcade/arcade/sh/stflappy.sh"
	lancer_fichier_sh(chemin_script)

func lancer_fichier_sh(chemin):
	print("Lancement via SH : ", chemin)
	
	var pid = OS.execute("bash", [chemin], false)
	
	if pid == - 1:
		print("Erreur : Impossible de lancer le script .sh")
