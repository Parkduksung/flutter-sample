import 'package:flutter/cupertino.dart';

class SearchEmptyPage extends StatelessWidget {
  const SearchEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('검색 결과가 없습니다.'));
  }
}
