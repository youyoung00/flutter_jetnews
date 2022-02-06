import 'dart:convert';

import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:http/http.dart' as http;

class JetnewsApi {
  final http.Client client;

  JetnewsApi(this.client);

  Future<Result<Iterable>> fetch(String query) async {
    try {
      final response = await client.get(
        Uri.parse('http://192.168.219.105:3000/jetnews/'),
      );
      List jsonResponse = jsonDecode(response.body);
      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
