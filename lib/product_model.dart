class Product {
  int id;
  String name, image_512;
  double listPrice, qtyAvailable;

  Product(
      this.id, this.name, this.image_512, this.listPrice, this.qtyAvailable);

  factory Product.fromJson(dynamic json) {
    return Product(
        json['id'] as int,
        json['name'] as String,
        json['image_512'] as String,
        json['list_price'] as double,
        json['qty_available'] as double);
  }

  @override
  String toString() {
    return '{ ${this.id},${this.name}, ${this.image_512} }, ${this.listPrice} }, ${this.qtyAvailable} }';
  }
}
