import 'package:http/http.dart';

class API {
  String url;
  Future<dynamic> getData(url) async {
    Response response;
    try {
      response = await get(url);
    } catch (e) {
      return throw ('Error: $e');
    }
    return response.body;
  }
}
