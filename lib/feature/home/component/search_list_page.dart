import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';

import 'book_item.dart';

class SearchListPage extends StatelessWidget {
  const SearchListPage({required this.items, super.key});

  final List<DocumentEntity> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return BookItem(document: items[index]);
      },
    ));
  }
}
