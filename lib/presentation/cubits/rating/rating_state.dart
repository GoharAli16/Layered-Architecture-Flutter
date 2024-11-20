import '../../../domain/entities/order.dart';
import '../../../core/constants/statuses.dart';

class RatingState {
  final Map<String, int> ratings;
  final String comment;
  final Order? orderDetails;
  final RatingStatus status;
  final String? errorMessage;

  const RatingState({
    required this.ratings,
    required this.comment,
    this.orderDetails,
    this.status = RatingStatus.initial,
    this.errorMessage,
  });

  factory RatingState.initial() {
    return const RatingState(
      ratings: {
        'Delivery Speed': 3,
        'Quality': 3,
        'Friendliness': 3,
      },
      comment: '',
    );
  }

  RatingState copyWith({
    Map<String, int>? ratings,
    String? comment,
    Order? orderDetails,
    RatingStatus? status,
    String? errorMessage,
  }) {
    return RatingState(
      ratings: ratings ?? this.ratings,
      comment: comment ?? this.comment,
      orderDetails: orderDetails ?? this.orderDetails,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
} 