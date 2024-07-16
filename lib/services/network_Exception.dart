import 'dart:io';

import 'package:dio/dio.dart';

abstract class NetworkExceptions {
  static String getDioException(dynamic error) { // Use dynamic instead of error for better type inference
    if (error is DioError) {
      // Handle DioError
      switch (error.type) {
        case DioErrorType.cancel:
          return 'Request is cancelled';
        case DioErrorType.connectionError:return "helloo";
        case DioErrorType.receiveTimeout:
          return 'Request timed out';
        case DioErrorType.sendTimeout:
          return 'Request Timeout';
        case DioErrorType.badResponse:
        // Handle DioErrorType.response
          String errorMessage = '';
          switch (error.response!.statusCode) {
            case 400:
              errorMessage = 'Unauthorized: Session expired';
              break;
            case 401:
              errorMessage = 'Unauthorized: Invalid credentials';
              break;
            case 403:
              errorMessage = 'Forbidden: Session expired';
              break;
            case 404:
            case 409:
              errorMessage = 'Not found';
              break;
            case 413:
              errorMessage = error.response!.statusMessage ?? 'Payload too large';
              break;
            case 422:
              errorMessage = error.response!.data['message'] ?? 'Unprocessable entity';
              break;
            case 408:
              errorMessage = 'Request Timeout';
              break;
            case 500:
              errorMessage = 'Internal server error';
              break;
            case 503:
              errorMessage = 'Service unavailable';
              break;
            default:
              errorMessage = 'Something went wrong';
              break;
          }
          return errorMessage;
          return 'Other Dio error occurred';
        default:
          return 'Dio error occurred';
      }
    } else if (error is SocketException) {
      // Handle SocketException
      return 'Please check your internet connection';
    } else if (error is TypeError && error.toString().contains("is not a subtype of")) {
      // Handle TypeError
      return 'Unable to process the request';
    } else {
      // Fallback for other types of errors
      return 'Something went wrong';
    }
  }
}
