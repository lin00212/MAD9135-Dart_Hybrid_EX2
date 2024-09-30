import "dart:io";
import "dart:math";

class Lucky {
  late int min, max;
  late int random;

  Lucky() {
    try {
      min = int.parse(Platform.environment["MIN"] ?? "10");
      max = int.parse(Platform.environment["MAX"] ?? "100");
    } catch (e) {
      print(
          "Error parsing environment variables. Using default values (10-100).");
      min = 10;
      max = 100;
    }

    if (max <= min) {
      print(
          "Error: MAX should be greater than MIN. Reverting to default range (10-100).");
      min = 10;
      max = 100;
    }
    var rng = Random();
    random = rng.nextInt(max - min + 1) + min;
  } // Luc
}
