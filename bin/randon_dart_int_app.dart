import 'package:randon_dart_int_app/randon_dart_int_app.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("No names were provided as arguments. Please provide names.");
    return;
  }

  for (String name in arguments) {
    String capitalizedName =
        name[0].toUpperCase() + name.substring(1).toLowerCase();

    Lucky luckyInstance = Lucky();

    String luckMessage = luckyInstance.random > 50
        ? "You are extremely lucky!"
        : "You might want to be cautious today.";

    print(
        "Hello $capitalizedName! Your lucky number is ${luckyInstance.random}. $luckMessage");
  } // i
}
