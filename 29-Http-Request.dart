import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  getData();
}

Future<http.Response> getData() {
  return http
      .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"))
      .then((http.Response response) {
    print(response.body);
    print(json.decode(response.body));
    return response;
  });
}
