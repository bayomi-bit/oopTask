class Camera {
  String name;
  String brand;
  double megapixel;

  Camera(this.name, this.brand, this.megapixel);

  void display() {
    print("Camera name: $name");
    print("Camera brand: $brand");
    print("Camera megapixel: $megapixel");
  }
}
