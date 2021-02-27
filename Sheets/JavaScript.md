# JavaScript

## Bases

* commentaires

```javascript
// ...

/* ... */
```

* déclaration et affectation d'une variable : `let a = 12;` (ou `var a = 12;`)
* déclaration et affectation d'une constante : `const pi = 3.14;`
* affichage dans la console :

```javascript
console.log("Hello World!");
console.log(a);
console.log(`Pi vaut ${pi}`)
```

* typage dynamique :

```javascript
let somme = a + pi;
console.log("a + pi = " + somme)
```

* conversion explicite :

```javascript
const h = "5";
console.log(h + 1);     // Concaténation : affiche "51"
const i = Number("5");
console.log(i + 1);     // Addition numérique : affiche 6

```

* affichage d'un champs de saisie : `const input= prompt("Enter input");`
* affichage d'une boîte de dialogue : `alert("Text");`
* opérations booléennes :
```javascript
===		Egal à
!==		Différent de
<		Inférieur à
<=		Inférieur ou égal à
> 		Supérieur à
>=		Supérieur ou égal à
```

* logique combinatoire :

```javascript
&& ET
|| OU
!  NON
```

* structure conditionnelle :

```javascript
if (condition) {
}
else {
}
```

* switch :

```javascript
switch (expression) {
case valeur1:
  *
  break;
case valeur2:
  *
  break;
default:
  *
}
```

* boucles :

```javascript
let i = borne_inf;
while (i <= borne_sup) {
    //
	i++;
}

for (let i = borne_inf; i <= borne_sup; i++) {
	//
}
```

## Fonctions

* déclaration de fonction :

```javascript
function functionName() {
	//
    // un éventuel return
}

// fonctions anonymes

// expression de fonction
const maVariable = function(param1, param2) {
	//
}
maVariable(arg1, arg2);

// fonction fléchée
const maVariable = (param1, param2) => {
    //
}
maVariable(arg1, arg2);
// /!\ possible d'enlever les { } pour mettre directement une expression
```

## Objets

* création d'un objet :

```javascript
syntaxe littérale

const object = {
  key: value,
  *
};
```

* ajout d'une nouvelle clé : `object.newkey = value;`

* déclaration d'une méthode :

```javascript
const object = {
  key: value,

  method() {
  	return this.key;
  }
};
```

## Tableaux

* création d'un tableau :

```javascript
const tab = [value1, value2, valueN];
// les valeurs peuvent être de différents types
```

* taille d'un tableau : `tab.Lenght`
* parcours d'un tableau :

```javascript
for (let i = 0; i < tab.length; i++) {
  // tab[i]
}

tab.forEach(el => {
  // el
});

for (const el of tab) {
  // el
}
```

* ajout d'un élément en fin : `tab.push(new_el);`

* ajout d'un élément en début : `tab.unshift(new_el);`

* suppression du dernier élément : `tab.pop();`

* suppression de n éléments à partir de l'indice i : `tab.splice(i, n);`

## Chaînes de caractères

* mise en majuscule d'une chaîne : `str.toUpperCase();`

* mise en minuscule d'une chaîne : `str.toLowerCase();`
* comparaison de chaînes : `str === "text"`

* transformation d'une chaîne en tableau : `const tab =  Array.from(str);`

* recherche d'un motif dans une chaîne : `str.indexOf(pattern);`

* recherche d'un motif en début de chaîne : `str.startsWith(pattern);`
* recherche d'un motif en fin de chaîne : `str.endsWith(pattern);`
* décomposition de chaîne : `str.split(char);`

## Classes

* création de classe :

```javascript
class Classe {
  constructor(key1) {
    this.key1 = key1;
    this.key2 = init_value;
  }

  method() {
    return `${this.key1}, ${this.key2}`;
  }
}
```

* création d'un objet avec prototype :

```javascript
const object1 = { key: value };				// object1.key === value
const object2 = Object.create(object1);		// object2.key === value
const object3 = Object.create(object2);		// object3.key=== value
```
