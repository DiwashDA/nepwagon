class ResponseStatus {
  static bool successStatus(statusCode) =>
      statusCode >= 200 && statusCode <= 299;

  static bool tokenTimeout(statusCode) => statusCode == 401;
}
