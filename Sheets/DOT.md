# DOT

## Description de graphes

**Graphe non orienté** :

```` dot
graph G {
  A -- B;
  B -- {C E F};
  D -- E;
  C -- F;
}
````

**Graphe orienté** :

```` dot
digraph G {
  A -> B;
  B -> {C E};
  C -> F;
  E -> {B D};
  F -> B;
}
````

## Commentaires

``` dot
/*	commentaire multiligne	*/
//	commentaire monoligne
#	ligne échappée
```

## Mise en forme

Pour plus d'informations, consulter le site web : [https://graphviz.org/doc/info/lang.html](https://graphviz.org/doc/info/lang.html).

## Compilation

Après avoir installé `graphviz` avec la commande `apt install graphviz`, pour compiler le fichier DOT en fichier JPEG, on utilise la commande `dot graph.dot -T jpeg -o graph.jpeg`.
