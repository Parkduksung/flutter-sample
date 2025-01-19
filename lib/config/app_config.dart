class AppConfig {
  static const kakaoApiToken =
      String.fromEnvironment('KAKAO_API_TOKEN', defaultValue: '');
}
