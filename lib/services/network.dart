import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  String url;

  NetworkHelper({this.url});

  Future getData() async {
    print('URL: $url');
    Response response = await get(url);
    print('Response: $response');
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);

      var parsedJsonData = jsonDecode(data);

      print(parsedJsonData);

      return parsedJsonData;
    } else {
      print(response.statusCode);
    }
  }
}
