import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  final String message;

  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}

/// Use to return a [CacheFailure] when there is a no locally saved data
class CacheFailure extends Failure {
  const CacheFailure({required String message}) : super(message: message);
}

/// Use to return a [NoConnectionFailure] when there is a no internet connection
class NoConnectionFailure extends Failure {
  const NoConnectionFailure({required String message}) : super(message: message);

}

/// Use to return a [NoPermissionFailure] when permission not granted
class NoPermissionFailure extends Failure {
  const NoPermissionFailure({required String message}) : super(message: message);
}

// class DeviceFailure extends Failure {
//   final String message;
//
//   const DeviceFailure({
//     required this.message,
//   });
//
//   @override
//   List<Object?> get props => [];
// }