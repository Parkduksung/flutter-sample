import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_sample/config/app_config.dart';
import 'package:flutter_sample/service/api/kakao/kakao_endpoint.dart';
import 'package:flutter_sample/service/api/kakao/response/kakao_search_book_response.dart';

abstract interface class KakaoService {
  Future<KakaoSearchBookResponse> getDocuments(String keyword);
}

class KakaoServiceImpl implements KakaoService {
  KakaoServiceImpl() : _authHeader = 'KakaoAK ${AppConfig.kakaoApiToken}';
  final String _authHeader;

  @override
  Future<KakaoSearchBookResponse> getDocuments(String keyword) async {
    final response = await http.get(
        Uri.https(KakaoEndpoint.baseUrl.path, KakaoEndpoint.searchBook.path,
            {'sort': 'accuracy', 'query': keyword}),
        headers: {'Authorization': _authHeader});
    return KakaoSearchBookResponse.fromJson(jsonDecode(response.body));
  }
}
