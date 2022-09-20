class ProdectModel {
  String? name, image, color, sized, price, descrabtion;
  ProdectModel({
    this.descrabtion,
    this.color,
    this.image,
    this.name,
    this.price,
    this.sized,
  });
  ProdectModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    name = map['name'];
    image = map['image'];
    descrabtion = map['descrabtion'];
    price = map['price'];
    sized = map['sized'];
    color = map['color'];
  }
  toJson() {
    return {
      'name': name,
      'image': image,
      'descrabtion': descrabtion,
      'price': price,
      'sized': sized,
      'color': color,
    };
  }
}
