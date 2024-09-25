class Employee {
  String name;
  String position;
  double salary = 0;
  static double payroll = 0;

  Employee.withoutSalary(this.name, this.position) {
    payroll += salary;
  }

  Employee(this.name, this.position, this.salary) {
    payroll += salary;
  }

  static void showTotalPayroll() {
    print("Total payroll: $payroll");
  }
}
