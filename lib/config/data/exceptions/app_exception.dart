class AppException implements Exception{
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppException{
  NoInternetException([String? message]):super(message, '');
}

class UnauthorisedException extends AppException{
  UnauthorisedException([String? message]):super(message, 'You dont have permission to access this');
}
class RequestTimeOutException extends AppException{
  RequestTimeOutException([String? message]):super(message, 'Request time out');
}
class FetchDateException extends AppException{
  FetchDateException([String? message]):super(message, '');
}