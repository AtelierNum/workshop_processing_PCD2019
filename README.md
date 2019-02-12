# Workshop_processing_PCD2019
Code for the processing workshop @stereolux for the processing community days 2019

Processing est une plateforme logicielle libre et gratuite pour l’apprentissage de la programmation dans le contexte des arts graphiques, créée par Casey Reas et Ben Fry. Elle est complémentée par une version web appelée p5.js, crée par Lauren McCarthy. Aujourd’hui Processing et p5.js sont utilisés de part le monde par une communauté rassemblant artistes, programmeurs, éducateurs et étudiants.

L’un des objectifs de ce projet est de rendre l’apprentissage de la programmation et des œuvres créatives à base de code accessible à toute sorte de communauté, en particulier celle qui sont généralement tenues à l’écart de ces outils et autre ressources. Le premier Processing Community Day (PCD), organisé par Taeyoon Choi et la Fondation Processing en 2017 a été l’un de nos efforts pour améliorer la diversité au sein des communautés de programmeurs et d’artistes. Se déroulant dans les locaux du MIT MediaLab à Boston, PCD 2017 a réuni les membres de la communauté venant en particulier de la côte Est des Etats Unis, leur permettant de se rencontrer « dans la vrai vie », de partager leur travaux, d’apprendre et d’initier de nouvelles collaborations.

En savoir plus sur le PCD 2017 et l’histoire de Processing.
Pour PCD 2019, nous voudrions élargir l’audience et l’impact de cette communauté en s’organisant avec des centaines de Communauté Processing de part le monde. La Fondation Processing organisera le Processing Community Day de Los Angeles et invitera d’autres organisateurs à les rejoindre via d’autres événements et ateliers partout dans le monde.

Lien vers PCD @ worldwide [https://day.processing.org/pcd-ww.html](https://day.processing.org/pcd-ww.html)

## Un peu d'inspiration : 

  - [Documentation P5 js](https://p5js.org/)
  - [Colorhunt, un site de palettes de couleurs](https://colorhunt.co/)
  - [Site de daniel Shiffman](https://shiffman.net/)

## Premier sketch
### Les variables 
Processing nécessite de déclarer le type des variables. Selon le type, une variable pourra stocker différents types de valeurs et avoir une taille de stockage différente. La valeur d'une variable peut être changée plus tard dans le programme. Ainsi, une variable pourra prendre plusieurs valeurs au cours du programme.

```java
-int // stocke des entiers
-float // stocke des réels 
-double //stocke également des réels, mais peut contenir plus de chiffres après la virgule
```
### Définir les constantes du sketch
Processing utilise une fonction **setup** qui s'exécute une seule fois au lancement du sketch, puis la fonction **draw** prend le relais et est exécutée en boucle jusqu'à l'arrêt du programme.
Il existe aussi des fonctions évènementielles qui s'exécutent de manière momentannée lorsqu'une action est effectuée par l'utilisateur, comme un clic de souris ou une pression d'une touche de clavier.

```java


void setup(){
size(800,800); // taille de la fenetre de dessin
background(0); //couleur du fond
}

void draw(){
// le code à executer en boucle
}

void mousePressed(){
// le code à exécuter lorsqu'un clic de souris est effectué
}

```

### Les fonctions de base de Processing

#### Les constantes d'un sketch
Certaines variables peuvent être "globales" ou internes selon l'endroit où elles ont été déclarées.
Une variable déclarée en dehors de toute fonction est considérée comme **globale** et accesible partout dans le sketch. Une variable déclarée dans une fonction, une boucle ou une condition est considérée comme **locale** et n'est accessible que dans cette boucle / variable / condition.

Certaines sont spécifiques à Processing, et utilisables à tout moment, telles que **mouseX, mouseY** qui définissent la position sur les axes x, y de la souris, et **width, height** qui définissent la taille de la fenêtre 

```java
int glob; // voici une variable globale

void setup(){
int loc = 10; // voici une variable locale crée avec une valeur de 10
glob = 10;
}

void draw(){
println(glob); // affiche dans la console la valeur de glob, ici "10"
//si je fais println(loc), Processing me renverra une erreur
}
```

#### Dessiner une forme
Une ellipse est définie par 4 paramètres : 
* sa position en x
* sa position en y
* son rayon en x
* son rayon en y

Le rectangle est également défini de la même manière, à la différence près que les deux derniers paramètres correspondent 
à la longueur de ses côtés.

```java
ellipse(50,100,10,10); //une cercle positionné en (50,100) faisant 10px de rayon
rect(50,100,10,10); // un carré positionné en (50,100) faisant 10px de côté
```

#### Les contours et le remplissage
Processing définit les contours avec la fonction **stroke()** et le remplissage d'une forme avec **fill()**
En mode RGB (Rouge Vert Bleu), elles nécessitent 3 paramètres correspondant aux trois valeurs de couleur. On peut (si l'on souhaite) ajouter une quatrième valeur pour définir l'opacité (également comprise entre 0 et 255). 
Pour tracer une forme avec un contour, il nous faut également définir son épaisseur avec **strokeWeight()**

```java
stroke(0,10,250,10); // contour avec du bleu presque transparent
strokeWeight(5); // contour avec une épaisseur de 5px
fill(255,0,0,125); // remplissage avec du rouge pur en semi-transparence
```

### L'aléatoire avec random
La fonction **random()** permet de faire intervenir une notion d'aléatoire dans le code. Elle renvoie une valeur aléatoire comprise dans un intervalle à chaque fois qu'elle est appelée. Random prend deux paramètres :
```java
random(10,50); // renvoie une valeur aléatoire entre 10 et 50
```

### Dessiner une forme avec des variables
Plutôt que placer des valeurs fixes lorsqu'on définit une forme, on peut définir celle-ci avec des variables qui pourront etre changées plus tard, permettant que la forme change de taille, couleur, de contour etc...
```java
int positionx = 100; // petit rappel : int stocke des entiers
int positiony = 50;
float taille = 50; // float stocke des réels
ellipse( positionx, positiony, taille, taille ); // un  cercle de 50 de rayon placé en (100,50).
```

## SKETCH1:

-float placement, comment passer a l'ellipse des variable.
-int taille, comment passer a l'ellipse des variable.
-keyPressed==true
-aller vers la version finale du PCD_sketch1_randomellipse


## SKETCH 2 :

-mouseX/mouseY
-opacité

## SKETCH 3 :

-for/push,pop
-map

## SKETCH FINAL :

