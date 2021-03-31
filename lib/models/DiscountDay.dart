class Discount {
  String imageUrl;
  String name;
  String address;
  int price;

  Discount({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Discount> discounts = [
  Discount(
    imageUrl: 'assets/images/Discount3.jpg',
    name: 'Discount 0',
    address: '404 Great St',
    price: 175,
  ),
  Discount(
    imageUrl: 'assets/images/Discount1.jpg',
    name: 'Discount 1',
    address: '404 Great St',
    price: 300,
  ),
  Discount(
    imageUrl: 'assets/images/Discount2.jpg',
    name: 'Discount 2',
    address: '404 Great St',
    price: 240,
  ),
];
