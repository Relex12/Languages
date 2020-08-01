int h = 80;      // hauteur de la barre
int l = 30;      // largeur de la barre
int d = 20;      // décalage de la barre par rappot au côté gauche
int r = 30;      // rayon de la balle

int x, y;        // position en X et en Y de la balle
int z;           // position en Y de la barre

int vx, vy;      // vitesse en X et en Y de la balle
int m = 10;      // facteur multiplicateur pour la vitesse de la balle

int score;       // score de la partie

void setup() {
  size (1000, 800);
  x = width/2;
  z = y = height/2;
  
  
  vx = int (random (m));
  vy = int (random (m));
}

void draw() {
  clean();
  move();
  plot();
  check();
}

void clean() {
  background (0);
  stroke (255);
  line (width/2, 0, width/2, height);
}

void move() {
  x += vx;
  y += vy;
  bounce();  
  z = (mouseY);
}

void bounce() {
  if (y-r <= 0|| y+r >= height) {
    vy = -vy;
  }
  if (x+r >= width) {
    vx = -vx;
  }
  if (d <= x && x-r <= d+l && z-h/2 <= y && y <= z+h/2 && vx < 0) {
    vx = -vx;
  }
}

void plot() {
  fill (255);
  rect (20, z-h/2, 30, h);
  
  ellipse (x, y, r, r);
}


void check() {
  score += 1;
  
  if (x < d) {
    noLoop();
    print ("Score : " + str(score));
  }
}
