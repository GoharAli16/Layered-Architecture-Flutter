import 'package:get_it/get_it.dart';
import '../../data/datasources/mock/mock_order_data.dart';
import '../../data/repositories/order_repository.dart';
import '../../domain/repositories/i_order_repository.dart';
import '../../presentation/cubits/rating/rating_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  getIt.registerLazySingleton<MockOrderDataSource>(
    () => MockOrderDataSource(),
  );

  getIt.registerLazySingleton<IOrderRepository>(
    () => OrderRepository(getIt()),
  );

  getIt.registerFactory<RatingCubit>(
    () => RatingCubit(getIt()),
  );
} 