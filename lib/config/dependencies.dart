
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_sample/data/repo/kakao/kakao_repository_remote.dart';
import 'package:flutter_sample/domain/kakao/repo/kakao_repository.dart';
import 'package:flutter_sample/domain/kakao/usecase/get_search_books_use_case.dart';
import 'package:flutter_sample/service/api/kakao/kakao_service.dart';

List<SingleChildWidget> get appProviders {
  return [
    Provider(create: (context) => KakaoServiceImpl() as KakaoService),
    Provider(create: (context) => KakaoRepositoryRemote(kakaoService: context.read()) as KakaoRepository),
    Provider(create: (context) => GetSearchBooksUseCase(kakaoRepository: context.read()))
  ];
}