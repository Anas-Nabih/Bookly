import 'package:dio/dio.dart';

abstract class ErrorHandling {
  final String errorMSG;

  const ErrorHandling(this.errorMSG);
}

class ServerFailure extends ErrorHandling {
  ServerFailure(super.errorMSG);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return ServerFailure("Connection timeout with ApiServices");
      case DioErrorType.sendTimeout:
        return ServerFailure("Send timeout with ApiServices");
      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout with ApiServices");
      case DioErrorType.response:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure("Request to Api Server was canceled");
      case DioErrorType.other:
        if (dioError.message.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected Error, Please try again!");

      default:
        return ServerFailure("OPPS there was an error, Please try later!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, Please try later!");
    } else {
      return ServerFailure("OPPS there was an error, Please try later!");
    }
  }
}
