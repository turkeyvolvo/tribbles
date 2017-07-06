/*
Titus Andromicus text from www.projectgutenberg.org
Chiller font from www.1001freefonts.com
http://wordcram.org/
Pixel processing code from https://processing.org/tutorials/pixels/
*/

String showImage = "Skull"; // Skull, Raven, Dog, Finch or Peruna

void setup() {
  size(1122, 1600); // Skull
  //size(1600, 1128); // Raven
  //size(1002, 666); // Dog
  //size(1336, 1200); // Finch
  
  switch(showImage) {
    case "Skull":
      originalImage = loadImage("skull.jpg");
      lineList = loadStrings("titus.txt");
      break;
    case "Raven":
      originalImage = loadImage("raven.jpg");
      lineList = loadStrings("raven.txt");
      break;
    case "Dog":
      originalImage = loadImage("dog.jpg");
      lineList = loadStrings("callofthewild.txt");
      break;
    case "Finch":
      originalImage = loadImage("finch.png");
      lineList = loadStrings("originofspecies.txt");
      break;
    default:
      break;
  }
  
  //processText();
  
  originalImage.resize(width,height);
  
  imageMap = createImage(originalImage.width, originalImage.height, RGB);
  
  originalImage.loadPixels();
  imageMap.loadPixels();
  
  processMap();
  
  background(255,255,255);
  
  initWordCram();
}

void draw() {
  //image(imageMap,0,0);
  if (wordCram.hasMore()) {
    wordCram.drawNext();
  }
}