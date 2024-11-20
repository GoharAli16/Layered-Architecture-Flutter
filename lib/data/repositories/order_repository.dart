import '../../domain/entities/order.dart';
import '../../domain/repositories/i_order_repository.dart';
import '../datasources/mock/mock_order_data.dart';

class OrderRepository implements IOrderRepository {
  final MockOrderDataSource _dataSource;

  OrderRepository(this._dataSource);

  @override
  Future<List<Order>> getOrders() async {
    final orderData = _dataSource.getOrders();
    return orderData.map((json) => Order.fromJson(json)).toList();
  }
} 