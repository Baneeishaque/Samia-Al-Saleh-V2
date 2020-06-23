import 'package:http/http.dart';
import 'package:samia_al_saleh/post_request_helper.dart';
import 'package:samia_al_saleh/server_end_point.dart';

Future<Response> getJsonRpcPostRequestResponseForSamia(
    String urlWithOutServerAddress, String parametersInJson) async {
  return getJsonRpcPostRequestResponse(serverAddress + urlWithOutServerAddress,
      {"Content-type": "application/json"}, parametersInJson);
}
