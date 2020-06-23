import 'package:http/http.dart';

Future<Response> getJsonRpcPostRequestResponse(
    String url, Map<String, String> headers, String parametersInJson) async {
  return await post(url, headers: headers, body: parametersInJson);
}
