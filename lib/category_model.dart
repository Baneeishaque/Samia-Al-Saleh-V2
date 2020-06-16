class Category {
  int id;
  String name, image_512;

  Category(this.id, this.name, this.image_512);

  factory Category.fromJson(dynamic json) {
    return Category(
        json['id'] as int, json['name'] as String, json['image_512'] as String);
  }

  @override
  String toString() {
    return '{ ${this.id},${this.name}, ${this.image_512} }';
  }
}
