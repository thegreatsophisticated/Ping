import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();

enum Category { food, transport, business }

class MarketDb {
  MarketDb(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.image,
      required this.category})
      : id = uuid;
  final String id;
  final String name;
  final int quantity;
  final double price;
  final String image;
  final Category category;
}
