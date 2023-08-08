import 'dart:convert';

import 'package:htt_get_post/models/user_model.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  String baseUrl = "https://dummyjson.com/todos?limit=3&skip=10";
  Uri uri = Uri.parse("$baseUrl");
  http.Response response2 = await http.get(uri);
  TodoModel todos = TodoModel.fromJson(jsonDecode(response2.body));
  print(todos.toString());

  // !DELETE
  /*http.Response response = await http.delete(
    Uri.parse("$uri/1"),
  );
  print(response.statusCode);
*/

  // ! PUT
  /* User user = User(
    name: "uik",
  );
  int id = 1;
  http.Response response = await http.put(
    Uri.parse("$baseUrl/user/$id"),
    headers: <String, String>{
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: jsonEncode(user.toMap()),
  );
  print(response.statusCode);
  print(response.body);
*/
  // ! POST

  /* User user = User(
    name: "20",
    surname: "John",
    avatar: "Doe",
    id: "081234567890",
  );

  http.Response response = await http.post(
    uri,
    headers: <String, String>{
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: jsonEncode(user.toMap()),
  );

  print(response.statusCode);

  /// *get
  http.Response response2 = await http.get(uri);

  if (response2.statusCode == 200) {
    List<User> users = (json.decode(response2.body) as List)
        .map((jsonObject) => User.fromJson(jsonObject as Map<String, Object?>))
        .toList();
    print(users.last);
  } else {
    print("Failed to fetch users. Status code: ${response2.statusCode}");
  }*/
}
