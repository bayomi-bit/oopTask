import 'bank_account.dart';
import 'camera.dart';
import 'employee.dart';
import 'patient.dart';
import 'phone_plan.dart';

void main() {
// Question 1:
  Camera camera = Camera("Nikon", "Canon", 28.0);
  camera.display();
  Camera camera2 = Camera("Canon", "Canon", 24.0);
  camera2.display();

// Question 2:
  Patient patient = Patient("mahmoud", 20, "Covid");
  print("Patient name: ${patient.name}");
  print("Patient age: ${patient.age}");
  print("Patient disease: ${patient.disease}");
  // Question 3:
  BankAccount account = BankAccount(1000, 123456789, "mahmoud");
  account.deposit(500);
  account.withdraw(5000); // Insufficient balance
  account.withdraw(300);
  // Question 4:
  Employee employee = Employee.withoutSalary("mahmoud", "developer");
  Employee.showTotalPayroll(); //0
  Employee employee2 = Employee("mahmoud", "developer", 5000);
  Employee.showTotalPayroll(); //5000
  Employee employee3 = Employee("kareem", "developer", 10000);
  Employee.showTotalPayroll(); //15000
  // Question 5:
  PhonePlan plan = PhonePlan("flex70", 300);
  plan.useData(100);
  plan.useData(200);
  plan.showDataUsed();
  plan.useData(200); // Warning: Data usage exceeds the data limit of 300
  plan.resetData();
  plan.showDataUsed();
}
