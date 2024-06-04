import 'dart:io';

void main() {
  // Prompt the user to enter a number
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();
  
  // Check if the input is not null and is a valid number
  if (input != null) {
    num? number = num.tryParse(input);
    
    if (number != null) {
      // Compare the number and print the appropriate message
      if (number > 10) {
        print('Your number is greater than 10');
      } else if (number < 10) {
        print('Your number is less than 10');
      } else {
        print('Your number is equal to 10');
      }
    } else {
      print('Invalid input. Please enter a valid number.');
    }
  } else {
    print('No input received.');
  }
}
