
import 'package:http/http.dart' as http;
import 'dart:convert';

class Post {
  String baseUrl = "https://elearning.com/wp-json/wp/v2/posts?_embed";

  getAllPost() {}}

Future<List> getAllPOst() async {
  try {
    var response = await http.get(Uri.parse(base64Url as String));
    print(response);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return Future.error("Server Error");
    }
  } catch (SocketException) {
    return Future.error("Error Fetching Data");
  }
}
