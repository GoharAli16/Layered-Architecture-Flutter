import '../entities/order.dart';

abstract class IOrderRepository {
  Future<List<Order>> getOrders();
} 