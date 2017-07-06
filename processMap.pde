PImage originalImage;
PImage imageMap;
int[] fontColors = new int[1];

void processMap() {
  boolean firstRun = true;
  float threshold = 127;
  boolean isLight = false;
  
  switch(showImage) {
    case "Skull":
      threshold = 75;
      isLight = true;
      break;
    case "Raven":
      threshold = 110;
      isLight = false;
      break;
    case "Dog":
      threshold = 205;
      isLight = false;
      break;
    case "Finch":
      threshold = 215;
      isLight = false;
      break;
    default:
      break;
  }
  
  for (int x = 0; x < originalImage.width; x++) {
    for (int y = 0; y < originalImage.height; y++ ) {
      int loc = x + y*originalImage.width;
      if (brightness(originalImage.pixels[loc]) > threshold) {
        if (isLight) {
          imageMap.pixels[loc]  = color(255);
          if (firstRun) {
            fontColors[0] = color(red(originalImage.pixels[loc]), green(originalImage.pixels[loc]), blue(originalImage.pixels[loc]));
            firstRun = false;
          }
          else {
            fontColors = expand(fontColors, fontColors.length + 1);
            fontColors[fontColors.length-1] = color(red(originalImage.pixels[loc]), green(originalImage.pixels[loc]), blue(originalImage.pixels[loc]));
          }
        }
        else {
          imageMap.pixels[loc] = color(0);
        }
      }  else {
        if (isLight) {
          imageMap.pixels[loc]  = color(0);
        }
        else {
          imageMap.pixels[loc]  = color(255);
          if (firstRun) {
            fontColors[0] = color(red(originalImage.pixels[loc]), green(originalImage.pixels[loc]), blue(originalImage.pixels[loc]));
            firstRun = false;
          }
          else {
            fontColors = expand(fontColors, fontColors.length + 1);
            fontColors[fontColors.length-1] = color(red(originalImage.pixels[loc]), green(originalImage.pixels[loc]), blue(originalImage.pixels[loc]));
          }
        }
      }
    }
  }

  // We changed the pixels in destination
  imageMap.updatePixels();
}