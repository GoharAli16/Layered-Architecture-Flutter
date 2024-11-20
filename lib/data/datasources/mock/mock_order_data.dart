class MockOrderDataSource {

  final  mockOrderJson = [{
    'id': '48493',
    'restaurantName': 'Chingo Foods',
    'items': [
      {
        'name': 'Pizza',
        'description': 'Pizza without onion, but a lot of cheese',
        'quantity': 1
      },
      {
        'name': 'Fruit Salad',
        'description': 'Salad without banana, but a lot of grapes',
        'quantity': 1
      }
    ],
    'totalAmount': 45.99,
    'dateTime': DateTime.now().toIso8601String(),
    'paymentMethod': 'VISA'
  }];

  List<Map<String, dynamic>> getOrders() => mockOrderJson;
} 