$nom = "chemin"
$compteur = 0
$22= $args[0]
$NombreFichier = $args[1]
"Nombre de fichier a creer" + $NombreFichier

#Valide que les paramtre son passé
If (!$22) {
    "Le nom du chichier doit etre passé en aramtre"
    exit
}

If (!$NombreFichier) {
    "Le nombre du chichier doit etre passé en aramtre"
    exit
}

#Boucle tant qu'on a pas creer 100 fichier
Remove-Item ($22 + "*")
Start-Sleep -Seconds 5
DO
{

 “Starting Loop $compteur”
 
 $compteur++
 #$compteur =  $compteur + 2

 New-Item -Path C:\Jeremie -Name ($22 + $compteur) -ItemType "file" -value "Ca marche"

} 
While ($compteur -le $NombreFichier)

#New-Item -Path C:\Jeremie -Name $chemin  -ItemType "file" -value "Ca marche"

#Move-Item -Path C:\Jeremie\Jsp1 -destination C:/jeremie/jeremiebouchard




