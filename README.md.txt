
# 🚗 Projet SQL – cIAra Mobility :
cIAra Mobility est une entreprise fictive spécialisée dans la location de véhicules électriques partagés 
(voitures, scooters, trottinettes, vélos électriques) dans plusieurs grandes villes françaises.

L’objectif du projet est de concevoir et exploiter une base de données PostgreSQL
afin de répondre à des besoins métier à l’aide du langage SQL.

## A. Organisation du travail
▪ Méthodologie
Nous avons organisé le projet en suivant un planning défini au préalable.
Les quêtes ont été réparties entre les membres du groupe afin d’assurer
une progression structurée et éviter les conflits de modification.

 Répartition des rôles

- Ananya : Setup GitHub, création de la base, Quête 1 & 2, rédaction README
- Joey : Jointures (Quête 3)
- Mohammed : Agrégations et cas métier (Quête 4 & 5)

Chaque membre travaillait sur ses requêtes, les testait sur pgAdmin,
puis effectuait des commits réguliers sur GitHub.

▪Environnement de travail

Outils utilisés :
- pgAdmin pour tester les requêtes
- VS Code pour écrire les fichiers SQL
- GitHub pour la gestion de version

Les requêtes étaient testées localement avant d’être ajoutées au dépôt.

## B. Analyse du Modèle de Données (MCD)
▪ La base repose sur 4 tables principales :

- `vehicule`
- `station`
- `client`
- `location`

Chaque table possède une clé primaire (PRIMARY KEY)
permettant d’identifier chaque enregistrement de manière unique.

▪ La table `location` est la table centrale.
Elle relie :

- Un client (via id_client)
- Un véhicule (via id_vehicule)
- Une station de départ
- Une station d’arrivée

Ces relations sont assurées par des clés étrangères (FOREIGN KEY).
Cela garantit l’intégrité des données et évite les incohérences
(par exemple, louer un véhicule inexistant).

▪ Cette structuration répond aux besoins métier de cIAra Mobility,
notamment pour :
- La gestion de flotte
- Le suivi des locations
- La traçabilité des véhicules

# 📊 Rapport d’Analyse Ananya Darshini PAJANY 
## C. Choix Techniques et Syntaxe SQL
Pour les Quêtes 1 et 2, j’ai principalement utilisé :

- SELECT: qui permet de choisir les colonnes que l'on souhaite afficher dans une table.
- FROM: qui indique la table à partir de laquelle on récupère les données.
- WHERE: qui permet de filtrer les résultats selon une condition.
- ORDER BY: qui permet de filter les résulatts selon une ou plusieurs colonnes.
- DISTINCT: qui permet d'afficher uniquement les valeurs uniques d'une colonne (supprime les doublons dans l'affichage)

### Logique de filtrage

Les besoins métier ont été traduits en conditions SQL.
Par exemple :

- "Véhicules disponibles" → WHERE etat = 'Disponible'
- "Autonomie > 400 km" → WHERE autonomie_km > 400

Cela montre la transformation d’un besoin métier en condition technique.

- Tri des données
▪ ORDER BY a été utilisé pour trier :

- Par autonomie décroissante
- Par ville puis par marque
- Par nom de client en ordre alphabétique

#### D. Difficultés rencontrées et Solutions

Plusieurs difficultés ont été rencontrées :

1. Problèmes lors de l'import du fichier CSV
   - Colonnes supplémentaires
   - Incompatibilité avec la structure de la table
   Solution : nettoyage du fichier et harmonisation des colonnes.

2. Erreurs liées aux clés étrangères
   - Mauvais nom de colonne référencée
   Solution : vérification de la structure des tables et correction des noms.

3. Problèmes d’extension de fichier (.sql.sql)
   Solution : correction manuelle des extensions et vérification dans VS Code.

Ces difficultés m'ont permis de mieux comprendre :
- Le fonctionnement des contraintes relationnelles
- L’importance de la cohérence des noms de colonnes
- L’importance de tester chaque requête progressivement
