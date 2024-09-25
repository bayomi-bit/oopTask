class BankAccount {
  double balance;
  double accountNumber;
  String accountHolder;

  BankAccount(this.balance, this.accountNumber, this.accountHolder);

  void deposit(double amount) {
    if (amount < 0) {
      print("Invalid amount");
    } else {
      print("Deposit successful");
      balance += amount;
      print("Balance: $balance");
    }
  }

  void withdraw(double amount) {
    if (balance < amount || amount < 0) {
      print("Insufficient balance");
    } else {
      balance -= amount;
      print("Balance: $balance");
    }
  }
}
