import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> args) async {
  Uri uri = Uri.parse("https://dummyjson.com/todos/add");
  http.Response response2 = await http.post(uri,
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode({
        "todo": 'Use DummyJSON in the project',
        "completed": false,
        "userId": 5,
      }));
  print(response2.body);
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
