# Laboratoire Papers animés

Ces laboratoires sont une variante "animée" des papers. Les seules nouveautés étant :
- que l'on peut savoir si la case sous le "curseur" est coloriée ou non via la fonction `is_colored()` qui retourne 0 si ladite case n'est pas coloriée et 1 si elle l'est. (Initialement, aucune case n'est coloriée) ;
- que la fonction `erase()` efface la couleur de la case sous le "curseur" ;
- que chaque `erase()` et chaque `colorize()` **marquent une pause** juste après avoir effacé ou colorié la case ;
- que le temps de pause à marquer entre chaque coloriage ou effacement de case est spécifié dans l'avant dernier paramètre `delai_anim` de la fonction `init_paper()` ;
- que le dernier paramètre de la fonction `init_paper()` ne sera pas éxploité pour le moment et devra être tout simplement mis à 0.

## Manipuler les papers animés.

Un `paper animé` est un quadrillage dans lequel on va pouvoir se déplacer, colorier et effacer des cases. Le "curseur" de coloriage se trouve initialement toujours dans le coin supérieur gauche et chaque coloriage ou effacement est une étape de l'animation.

Les fonctions permettant de manipuler un `paper animé` :
- `init_paper(nb_lignes,nb_colonnes,taille,delai_anim,useStepping)` : Permet de créer un `paper` contenant `nb_lignes` lignes et `nb_colonnes` colonnes. `taille` est la dimension en pixel d'une case et `delai_anim` est le temps de pause (en seconde) entre chaque coloriages ou effacements de cases. Ce délai peut-être décimal, par exemple 0.05 pour 5 centièmes de seconde. Le paramètre `useStepping` sera exploité plus tard, il devra être mis à 0 pour le moment ;
- `move_left()` : déplace le "curseur" de coloriage d'une case à gauche ;
- `move_right()` : déplace le "curseur" de coloriage d'une case à droite ;
- `move_down()` : déplace le "curseur" de coloriage d'une case vers le bas ;
- `move_up()`  : déplace le "curseur" de coloriage d'une case vers le haut ;
- `move_to(i,j)` : déplace le "curseur" de coloriage en ligne `i`, colonne `j`. NB : la première ligne est la ligne numéro 0 et la première colonne est la colonne numéro 0 ;
- `colorize()` : colorie la case où se trouve le "curseur" de coloriage. **Attention : on ne peut jamais colorier hors du `paper`** ;
- `erase()` : efface la couleur de la case où se trouve le "curseur" de coloriage. **Attention : on ne peut jamais effacer hors du `paper`** ;
- `is_colored()` : retourne 0 si la case actuelle (sous le "curseur") n'est pas coloriée et 1 si elle l'est. (Initialement, aucune case n'est coloriée) ;
- `change_color(rouge,vert,bleu)` : permet de définir la couleur de coloriage en fixant l'intensité des composantes rouge, verte et bleu. **Attention : chaque composante de couleur ne peut qu'être un nombre entier entre 0 inclus et 255 inclus** ;
- `display_paper()` : affiche le `paper animé`.

### Exemple

Voici un exemple qui colorie un petit carré de 4 cases en en haut à gauche du paper, puis les efface, et recommence 9 fois :

@[Sample paper]({"stubs": ["main.c"],"command": "sh /project/target/run.sh", "project" : "animPaper"})

On voit bien que chaque coloriage ou effacement est visible (pendant le délai fixé de 0.25s dans l'avant-dernier paramètre de l'appel à la fonction `init_paper();`).
