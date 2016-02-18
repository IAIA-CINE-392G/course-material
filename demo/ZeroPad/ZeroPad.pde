String path = "/Users/Charles/Desktop/charles-veasey"; 
String prefix = "Chapter";

File[] files  = new File[1000];
int index = 0;

void setup() {
  walk(path);
  //printArray(files);

  for (int i=0; i<index-1; i++) {
    String name = files[i].getName();
    String fullpath = files[i].getPath();

    if (name.startsWith(prefix)) {   
      String secondPart = name.substring(prefix.length(), name.length());
     
      if (files[i].isDirectory() && secondPart.length() == 1) {
        String newSecondPart = "0" + secondPart;
        String newName = fullpath.replace(secondPart, newSecondPart);
        files[i].renameTo(new File(newName));
      }
      else if (files[i].isFile()){
        if (secondPart.endsWith(".pde")){
          
          String endPart[] = split(secondPart, '.');
          
          if (endPart[0].length() == 1){
            String newSecondPart = "0" + secondPart;
            String newName = fullpath.replace(secondPart, newSecondPart);
            files[i].renameTo(new File(newName));
          }
        }
      }
    }  
  } 
}


/* Traverse through directories and files
*  modification of:
*  http://stackoverflow.com/questions/2056221/recursively-list-files-in-java
*/
void walk( String path ) {
    File root = new File( path );
    File[] list = root.listFiles();
    
    if (list == null) {
      return;
    }
    
    for ( File f : list ) {
        if ( f.isDirectory() ) {
            walk( f.getAbsolutePath() );
            System.out.println( "Dir:" + f.getAbsoluteFile() );
            files[index] = f;
            index++;
        }
        else {
            System.out.println( "File:" + f.getAbsoluteFile() );
            files[index] = f;
            index++;
        }
    }
    
    return;
}