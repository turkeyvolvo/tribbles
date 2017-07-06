import wordcram.*;
import java.awt.*;
WordCram wordCram;

void initWordCram() {
  Shape imageShape = new ImageShaper().shape(imageMap, #FFFFFF);
  ShapeBasedPlacer placer = new ShapeBasedPlacer(imageShape);
  
  switch(showImage) {
    case "Skull":
      wordCram = new WordCram(this)
        .fromTextFile("titus.txt")
        .withPlacer(placer)
        .withNudger(placer)
        .withFont(createFont("chiller.ttf", 1))
        .sizedByWeight(1,150)
        .withColors(fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))])
        .withStopWords("thy thou haue thee hath tit heere oh")
        .angledAt(radians(30), radians (30), radians(-60))
        .lowerCase()
        .withAngler(Anglers.heaped())
        .maxNumberOfWordsToDraw(2000);
      break;
    case "Raven":
      wordCram = new WordCram(this)
        .fromTextFile("raven.txt")
        .withPlacer(placer)
        .withNudger(placer)
        .withFont(createFont("raven.ttf", 1))
        .sizedByWeight(1,150)
        .withColors(fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))])
        .angledAt(radians(30), radians (30), radians(-60))
        .lowerCase()
        .withAngler(Anglers.heaped())
        .maxNumberOfWordsToDraw(2000);
      break;
    case "Dog":
      wordCram = new WordCram(this)
        .fromTextFile("callofthewild.txt")
        .withPlacer(placer)
        .withNudger(placer)
        .withFont(createFont("towerprint.ttf", 1))
        .sizedByWeight(1,150)
        .withColors(fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))])
        .angledAt(radians(30), radians (30), radians(-60))
        .lowerCase()
        .withAngler(Anglers.heaped())
        .maxNumberOfWordsToDraw(2000);
      break;
    case "Finch":
      wordCram = new WordCram(this)
        //.fromTextFile("originofspecies.txt")
        .fromTextString(words)
        .withPlacer(placer)
        .withNudger(placer)
        .withFont(createFont("jamscript.ttf", 1))
        .sizedByWeight(1,150)
        .withColors(fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))], fontColors[int(random(0,fontColors.length-1))])
        .angledAt(radians(30), radians (30), radians(-60))
        .lowerCase()
        .withAngler(Anglers.heaped())
        .maxNumberOfWordsToDraw(2000);
      break;
    default:
      break;
  }
}