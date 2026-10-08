import 'dart:io';

void main() {
  bool ordering = true;

  print('Pizza Order Calculator');
  print('Prices: Small = \$5, Medium = \$7, Large = \$10\n');

  while (ordering) {
    stdout.write('Enter pizza size (S = Small, M = Medium, L = Large): ');
    String size = stdin.readLineSync()!.toUpperCase();

    stdout.write('Enter quantity: ');
    int quantity = int.parse(stdin.readLineSync()!);

    double price;

    switch (size) {
      case 'S':
        price = 5;
        print('You selected: Small Pizza (\$$price each)');
        break;
      case 'M':
        price = 7;
        print('You selected: Medium Pizza (\$$price each)');
        break;
      case 'L':
        price = 10;
        print('You selected: Large Pizza (\$$price each)');
        break;
      default:
        print('Invalid size! Please enter S, M, or L.\n');
        continue;
    }

    double total = price * quantity;
    print('Quantity: $quantity');
    print('Total Payment: \$${total.toStringAsFixed(2)}\n');

    stdout.write('Do you want to order again? (yes/no): ');
    String answer = stdin.readLineSync()!.toLowerCase();

    if (answer != 'yes' && answer != 'y') {
      ordering = false;
      print('\nThank you for your order!');
    }
    print('');
  }
}