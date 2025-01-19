
enum KakaoEndpoint {
  baseUrl('dapi.kakao.com'),
  searchBook('/v3/search/book');

  final String path;
  const KakaoEndpoint(this.path);
}
