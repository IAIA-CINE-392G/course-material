Table table;
float white;
float asian;
float nativeA;
float hispanic;
float african;
float d; 

void setup() {
  size(500, 500);

  table = loadTable("stats.csv", "header");
  println(table.getRowCount() + " total rows in table");

  for (TableRow row : table.rows()) {
    white = row.getFloat("white");
    asian = row.getFloat("asian");
    nativeA = row.getFloat("native");
    hispanic = row.getFloat("hispanic");
    african = row.getFloat("african");
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);

  // african
  d = map(african, 0, 100, 50, 500); 
  fill(100);
  ellipse(0, 0, d, d);

  // hispanic
  d = map(hispanic, 0, 100, 50, 500); 
  fill(175);
  ellipse(0, 0, d, d); 
  
  // native
  d = map(nativeA, 0, 100, 50, 500); 
  fill(200);
  ellipse(0, 0, d, d); 

  // asian
  d = map(asian, 0, 100, 50, 500);
  fill(225);
  ellipse(0, 0, d, d); 

  // white
  d = map(white, 0, 100, 50, 500);  
  fill(255);
  ellipse(0, 0, d, d);
}