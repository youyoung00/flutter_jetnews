import 'dart:convert';

import 'package:flutter_jetnews/data/data_source/result.dart';
import 'package:http/http.dart' as http;

class TopicApi {
  final http.Client client;

  TopicApi(this.client);

  Future<Result<Iterable>> fetch() async {
    String schoolIp = '192.168.0.80';
    String homeIp = '192.168.219.106';
    try {
      final response = await client.get(
        Uri.parse('http://$schoolIp:3000/topic/'),
      );
      Iterable jsonResponse = jsonDecode(response.body);
      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
