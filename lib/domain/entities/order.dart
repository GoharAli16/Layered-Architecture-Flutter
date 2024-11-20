class Order {
  final String id;
  final String restaurantName;
  final List<OrderItem> items;
  final double totalAmount;
  final DateTime dateTime;
  final String paymentMethod;

  Order({
    required this.id,
    required this.restaurantName,
    required this.items,
    required this.totalAmount,
    required this.dateTime,
    required this.paymentMethod,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      restaurantName: json['restaurantName'],
      items: (json['items'] as List)
          .map((item) => OrderItem.fromJson(item))
          .toList(),
      totalAmount: json['totalAmount'].toDouble(),
      dateTime: DateTime.parse(json['dateTime']),
      paymentMethod: json['paymentMethod'],
    );
  }
}

class OrderItem {
  final String name;
  final String description;
  final int quantity;

  OrderItem({
    required this.name,
    required this.description,
    required this.quantity,
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      name: json['name'],
      description: json['description'],
      quantity: json['quantity'],
    );
  }
} 