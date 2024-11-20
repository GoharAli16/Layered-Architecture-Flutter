enum RatingStatus {
  initial,
  submitting,
  success,
  failure
}


extension RatingStatusX on RatingStatus {
  bool get isSubmitting => this == RatingStatus.submitting;
  bool get isSuccess => this == RatingStatus.success;
  bool get isFailure => this == RatingStatus.failure;
}
