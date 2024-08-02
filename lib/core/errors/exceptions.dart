import 'package:dio/dio.dart';

/// Throws when there's no shared pref data to fetch
class CacheException implements Exception {}

/// Exception for the HTTP requests from Dio
class ServerException implements Exception {
  final String errorMessage;
  final bool unexpectedError;
  final Map<String, dynamic>? data;

  ServerException({required this.errorMessage, required this.unexpectedError, this.data});

  ServerException.fromDioError(DioException dioError)
      : errorMessage = _getErrorMessage(dioError),
        unexpectedError = _isUnexpectedError(dioError),
        data = dioError.response?.data as Map<String, dynamic>?;

  static String _getErrorMessage(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        return "Request was cancelled";
      case DioExceptionType.connectionTimeout:
        return "Connection timeout";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout";
      case DioExceptionType.sendTimeout:
        return "Send timeout";
      case DioExceptionType.badResponse:
        return _handleStatusCode(dioError.response);
      case DioExceptionType.unknown:
        return dioError.message?.contains('SocketException') == true ? "Socket exception" : "Unexpected error";
      default:
        return "Something went wrong";
    }
  }

  static bool _isUnexpectedError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return false;
      case DioExceptionType.badResponse:
      case DioExceptionType.unknown:
      default:
        return true;
    }
  }

  static String _handleStatusCode(Response? response) {
    int? statusCode = response?.statusCode;
    switch (statusCode) {
      case 302:
        return "Further action needs to be taken in order to complete the request.";
      case 400:
        return "Bad request.";
      case 401:
        return "Authentication failed.";
      case 403:
        return "Authenticated user not allowed to access the specified API endpoint.";
      case 404:
        return "The requested resource was not found.";
      case 405:
        return "Method not allowed.";
      case 410:
        return "The requested resource is no longer available.";
      case 415:
        return "Unsupported media type.";
      case 429:
        return "Too many requests.";
      case 500:
        return "Internal server error.";
      default:
        return "Unhandled status code: $statusCode.";
    }
  }

  @override
  String toString() {
    return 'ServerException{errorMessage: $errorMessage, unexpectedError: $unexpectedError, data: $data}';
  }
}
