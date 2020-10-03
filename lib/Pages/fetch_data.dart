import 'package:http/http.dart' as http;
import 'dart:convert';

class FetchData {
  var url = "https://jsonplaceholder.typicode.com/photos";
  getData() async {
    var res = await http.get(url);
    return jsonDecode(res.body);
  }
}
