import 'myLib.dart';

void main() {
  print('TMA3084 Lab Exercise 2.1 - Overtime Payment Program\n');

  Employee emp = Employee(
    name: 'Ahmad Bin Ali',
    id: 123456,
    hoursWorked: 45,
    hourlyRate: 100,
    bonus: 320,
  );

  emp.displaySummary();
}