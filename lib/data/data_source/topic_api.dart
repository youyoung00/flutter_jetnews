import 'dart:convert';

import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:http/http.dart' as http;

class TopicApi {
  final http.Client client;

  TopicApi(this.client);

  Future<Result<Iterable>> fetch() async {
    try {
      final response = await client.get(
        Uri.parse('http://localhost:3000/topic/'),
      );
      List<Map<String, dynamic>> jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
