import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web_app/fetchModel.dart';

Future<List<Welcome>> fetchData() async {
  const url = 'https://fakestoreapi.com/products';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return List<Welcome>.from(
      json.decode(response.body).map((data) => Welcome.fromJson(data)),
    );
  } else {
    throw Exception('Failed to fetch data');
  }
}
