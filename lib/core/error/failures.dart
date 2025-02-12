import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({super.message = 'Server failure occurred'});
}

class CacheFailure extends Failure {
  const CacheFailure({super.message = 'Cache failure occurred'});
}

class NetworkFailure extends Failure {
  const NetworkFailure({super.message = 'Network failure occurred'});
}
