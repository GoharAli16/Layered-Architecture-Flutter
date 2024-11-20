import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/statuses.dart';
import '../../../domain/entities/order.dart';
import '../../../domain/repositories/i_order_repository.dart';
import 'rating_state.dart';

class RatingCubit extends Cubit<RatingState> {
  final IOrderRepository _orderRepository;

  RatingCubit(this._orderRepository) : super(RatingState.initial()) {
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    try {
      final orders = await _orderRepository.getOrders();
      if (orders.isNotEmpty) {
        emit(state.copyWith(
          orderDetails: orders.first,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: RatingStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void updateRating(String category, int rating) {
    final newRatings = Map<String, int>.from(state.ratings);
    newRatings[category] = rating;
    emit(state.copyWith(ratings: newRatings));
  }

  void updateComment(String comment) {
    emit(state.copyWith(comment: comment));
  }

  Future<void> submitRating() async {
    try {
      emit(state.copyWith(status: RatingStatus.submitting));
      
     // await Future.delayed(const Duration(seconds: 2));
      
      emit(state.copyWith(status: RatingStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: RatingStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
} 