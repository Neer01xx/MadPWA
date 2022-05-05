import 'dart:io';
import "dart:math";

class Hangman {
  final _random = new Random();
  late String element;

  Hangman(var list) {
    element = list[_random.nextInt(list.length)];
  }

  void start() {
    int chance = 7;
    int wordlength = 0;
    List word = [];
    List alpha = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z"
    ];
    for (int i = 0; i < element.length; i++) {
      word.add("_");
    }
    while (chance > 0 && wordlength != word.length) {
      print("Chances left");
      print(chance);
      print(word);
      sleep(new Duration(milliseconds: 800));
      print(alpha);
      sleep(new Duration(milliseconds: 800));
      print("Choose an alphabet");
      sleep(new Duration(milliseconds: 800));
      var a = stdin.readLineSync();
      sleep(new Duration(milliseconds: 800));
      int i = 0;
      for (; i < alpha.length; i++) {
        if (a == alpha[i]) {
          alpha.remove(a);
          break;
        }
      }
      if (i == alpha.length) {
        print("Choose from the given list");
        sleep(new Duration(milliseconds: 800));
        chance--;
      } else {
        int lastCount = wordlength;
        for (int j = 0; j < element.length; j++) {
          if (a == element[j]) {
            word[j] = a;
            wordlength++;
          }
        }
        if (lastCount == wordlength) {
          print("$a not in the word");
          sleep(new Duration(milliseconds: 800));
          chance--;
        }
      }
      print("--------------------------------------------");
      sleep(new Duration(milliseconds: 800));
    }
    if (wordlength == word.length) {
      print("You win the word is $element");
    } else {
      print("Chances over, you lose");
    }
  }
}

void main() {
  Hangman hangman =
      Hangman(["PARANOID", "CARTOGRAPHY", "BEACON", "POSTMAN"]);
  hangman.start();
}
