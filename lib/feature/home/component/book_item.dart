
import 'package:flutter/material.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key,
    required this.document,
  });

  final DocumentEntity document;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: document.thumbnail.isNotEmpty
            ? Image.network(
          document.thumbnail,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.book, size: 50);
          },
        )
            : const Icon(Icons.book, size: 50),
        title: Text(
          document.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('저자: ${document.authors.join(", ")}'),
            Text('출판사: ${document.publisher}'),
            Text('가격: ${document.price}원'),
          ],
        ),
        isThreeLine: true,
      ),
    );
  }
}