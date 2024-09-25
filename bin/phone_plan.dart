class PhonePlan {
  String planName;
  double dataLimit;
  double dataUsed;

  PhonePlan(this.planName, this.dataLimit, {this.dataUsed = 0});

  void useData(double amount) {
    if (dataUsed + amount > dataLimit) {
      print("Warning: Data usage exceeds the data limit of $dataLimit");
    } else {
      dataUsed += amount;
      print("Data used: $dataUsed");
    }
  }

  void resetData() {
    dataUsed = 0;
  }

  void showDataUsed() {
    double remainingData = dataLimit - dataUsed;
    print("Data used: $dataUsed");
    print("Data remaining: $remainingData");
  }
}
