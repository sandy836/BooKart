import 'package:BooKart/Models/card_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<CardModel>> getData() async {
  final url = "https://jsonplaceholder.typicode.com/photos";
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse
        .map((cardModel) => new CardModel.fromJson(cardModel))
        .toList();
  } else {
    throw Exception('Failed to load jobs from API');
  }
}
