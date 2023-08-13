import 'package:http/http.dart' as http;


class ApiClient extends http.BaseClient {
  final http.Client _inner = http.Client();

  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {

    headers ??= {};
    headers.addAll({
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    var response = await _inner.get(url, headers: headers);

    return response;
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    // Get the bearer token from SharedPreferences

    // Set the request headers
    request.headers['Content-Type'] = 'application/json';
    request.headers['Accept'] = 'application/json';


    // Send the request using the inner client
    return _inner.send(request);
  }
}





