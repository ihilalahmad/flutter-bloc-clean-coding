class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_message$_prefix';
  }
}

class NoInternetException extends AppExceptions {
  NoInternetException([String? message]) : super(message, '');
}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([String? message]) : super(message, '');
}

class RequestTimeOutException extends AppExceptions {
  RequestTimeOutException([String? message]) : super(message, '');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, '');
}
