class Employee {
  String name;
  int id;
  double hoursWorked;
  double hourlyRate;
  double bonus;

  static const double regularHours = 40.0;
  static const double overtimeMultiplier = 1.5;

  Employee({
    required this.name,
    required this.id,
    required this.hoursWorked,
    required this.hourlyRate,
    this.bonus = 0.0,
  });

  double calculateRegularPay() {
    double regular = hoursWorked > regularHours ? regularHours : hoursWorked;
    return regular * hourlyRate;
  }

  double calculateOvertimePay() {
    if (hoursWorked <= regularHours) return 0.0;
    double overtimeHours = hoursWorked - regularHours;
    return overtimeHours * hourlyRate * overtimeMultiplier;
  }

  double calculateTotalSalary() {
    return calculateRegularPay() + calculateOvertimePay() + bonus;
  }

  void displaySummary() {
    print('========================================');
    print('Employee ID   : $id');
    print('Employee Name : $name');
    print('Hours Worked  : ${hoursWorked.toStringAsFixed(1)} hrs');
    print('Hourly Rate   : \$${hourlyRate.toStringAsFixed(2)} USD');
    print('----------------------------------------');
    print('Regular Pay   : \$${calculateRegularPay().toStringAsFixed(2)} USD');
    print('Overtime Pay  : \$${calculateOvertimePay().toStringAsFixed(2)} USD');
    print('Bonus         : \$${bonus.toStringAsFixed(2)} USD');
    print('----------------------------------------');
    print('Total Salary  : \$${calculateTotalSalary().toStringAsFixed(1)} USD');
    print('========================================');
  }
}