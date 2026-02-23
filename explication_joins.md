La table location contient des clés étrangères vers client, vehicule et station.
Avec les JOIN, je relie ces tables pour afficher des informations complètes.

1) JOIN client : ON l.id_client = c.id_client
   → permet d’avoir le nom et le prénom du client pour chaque location.

2) JOIN vehicule : ON l.id_vehicule = v.id_vehicule
   → permet d’ajouter la marque et le modèle du véhicule loué.

3) JOIN station deux fois (s_dep, s_arr)
   → permet d’obtenir le nom de la station de départ et de la station d’arrivée
      pour chaque location.