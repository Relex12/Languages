int sizeB = 20;
int sizeM = 800;

int size = sizeB;
int step = 150;
void setup() {
  size(1000, 800);
}


void draw() {
  background(255);
  
  draw_lines (sizeB, sizeM);
  square ((width-sizeB)/2, (height-sizeB)/2, sizeB);
  square ((width-sizeM)/2, (height-sizeM)/2, sizeM);

  square ((width-size)/2, (height-size)/2, size);

  size +=1;
  
  int psize = size + step;

  while (psize < sizeM) {
    square ((width-psize)/2, (height-psize)/2, psize);
    psize += step;
  }

  if (size >= sizeB+step) {
    size = sizeB;
  }
}

void square (int x, int y, int size) {
  line(x, y, x+size, y);
  line(x, y, x, y+size);
  line(x+size, y+size, x+size, y);
//  line(x+size, y+size, x, y+size);
}

void draw_lines (int sizeB, int sizeM) {
  line((width-sizeB)/2, (height-sizeB)/2, (width-sizeM)/2, (height-sizeM)/2); 
  line((width+sizeB)/2, (height-sizeB)/2, (width+sizeM)/2, (height-sizeM)/2); 
  line((width-sizeB)/2, (height+sizeB)/2, (width-sizeM)/2, (height+sizeM)/2); 
  line((width+sizeB)/2, (height+sizeB)/2, (width+sizeM)/2, (height+sizeM)/2); 
}
