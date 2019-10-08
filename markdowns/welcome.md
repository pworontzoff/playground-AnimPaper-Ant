# Laboratoire Papers animés

Ces laboratoires sont une variante "animée" des papers. Les seules nouveautés étant :
- que l'on peut savoir si la case sous le "curseur" est coloriée ou non via la fonction `is_colored()` qui retourne 0 si ladite case n'est pas coloriée et 1 si elle l'est. (Initialement, aucune case n'est coloriée) ;
- que la fonction `erase()` efface la couleur de la case sous le "curseur" ;
- que chaque `erase()` et chaque `colorize()` marquent une pause juste après avoir effacé ou colorié la case ;
- que le temps de pause à marquer entre chaque coloriage ou effacement de case est spécifié dans l'avant dernier paramètre `delai_anim` de la fonction `init_paper()` ;
- que le dernier paramètre de la fonction `init_paper()` ne sera pas éxploité pour le moment et devra être tout simplement mis à 0.

## Manipuler les papers animés.

Un `paper animé` est un quadrillage dans lequel on va pouvoir se déplacer, colorier et effacer des cases. Le "curseur" de coloriage se trouve initialement toujours dans le coin supérieur gauche et chaque coloriage ou effacement est une étape de l'animation.

Les fonctions permettant de manipuler un `paper animé` :
- `init_paper(nb_lignes,nb_colonnes,taille,delai_anim,useStepping)` : Permet de créer un `paper` contenant `nb_lignes` lignes et `nb_colonnes` colonnes. `taille` est la dimension en pixel d'une case et `delai_anim` est le temps de pause (en seconde) entre chaque coloriages ou effacements de cases. Ce délai peut-être décimal, par exemple 0.05 pour 5 centièmes de seconde. Le paramètre `useStepping` sera exploité plus tard, il devra être mis à 0 pour le moment.
- `move_left()` : déplace le "curseur" de coloriage d'une case à gauche.
- `move_right()` : déplace le "curseur" de coloriage d'une case à droite.
- `move_down()` : déplace le "curseur" de coloriage d'une case vers le bas.
- `move_up()`  : déplace le "curseur" de coloriage d'une case vers le haut.
- `colorize()` : colorie la case où se trouve le "curseur" de coloriage. **Attention : on ne peut jamais colorier hors du `paper`**
- `erase()` : efface la couleur de la case où se trouve le "curseur" de coloriage. **Attention : on ne peut jamais effacer hors du `paper`**
- `change_color(rouge,vert,bleu)` : permet de définir la couleur de coloriage en fixant l'intensité des composantes rouge, verte et bleu. **Attention : chaque composante de couleur ne peut qu'être un nombre entier entre 0 inclus et 255 inclus**
- `display_paper()` : affiche le `paper animé`.

### Exemple

Voici un exemple qui re-colorie (9 fois) les cases noires en blanc et inversement. Ceci en dessinant des petits carrés (de côtés 2) tout en haut à gauche du paper animé :

@[Sample paper]({"stubs": ["main.c"],"command": "sh /project/target/run.sh", "project" : "animPaper"})
