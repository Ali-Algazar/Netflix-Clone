import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioError(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'connect time out ');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'send Time out');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'send Time out');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'send Time out');
      case DioExceptionType.badResponse:
        return ServerFailure(message: 'send Time out');
      case DioExceptionType.cancel:
        return ServerFailure(message: 'send Time out');
      case DioExceptionType.connectionError:
        return ServerFailure(message: 'send Time out');
      case DioExceptionType.unknown:
        return ServerFailure(message: 'send Time out');
    }
  }
}
