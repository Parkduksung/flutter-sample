import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sample/base/effect_base.dart';
import 'package:flutter_sample/domain/kakao/entity/document_entity.dart';
import 'package:flutter_sample/feature/home/component/book_item.dart';
import 'package:flutter_sample/feature/home/home_contract.dart';
import 'package:flutter_sample/feature/home/home_viewmodel.dart';
import 'package:flutter_sample/ext/ext_state.dart';
import 'package:flutter_sample/utils/debounce_texteditcontroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const MethodChannel methodChannel =
      MethodChannel('samples.flutter.io/query');
  static const EventChannel eventChannel =
      EventChannel('samples.flutter.io/books');
  DebouncedTextController? _debouncedTextController;

  static const _debounceDuration = Duration(milliseconds: 1000);

  @override
  void initState() {
    super.initState();
    _initializeTextController();
    _setUpEventChannel();
    _setupEffectCollector();
  }

  void _initializeTextController() {
    _debouncedTextController = DebouncedTextController(
      onDebounce: (keyword) => methodChannel.invokeMethod('query', keyword),
      duration: _debounceDuration,
    );
  }

  void _setUpEventChannel() {
    eventChannel.receiveBroadcastStream().listen((dynamic event) {
      final List<dynamic> booksJson = json.decode(event as String);
      final List<DocumentEntity> books = booksJson
          .map((json) => DocumentEntity.fromJson(json as Map<String, dynamic>))
          .toList();
      widget.viewModel.event(UpdateSearchResult(books));
    });
  }

  void _setupEffectCollector() {
    collectEffect<BaseEffect>(widget.viewModel.effect, (effect) {
      switch (effect) {
        case ShowToast():
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(effect.message)));
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                  controller: _debouncedTextController,
                  decoration: InputDecoration(
                    hintText: '검색어를 입력하세요',
                    border: const OutlineInputBorder(),
                  )),
              const SizedBox(height: 20),
              Expanded(
                child: StreamBuilder<HomeState>(
                  stream: widget.viewModel.state,
                  builder: (context, snapshot) {
                    final searchList = snapshot.data?.searchList ?? [];
                    if (searchList.isEmpty) {
                      return const Center(
                        child: Text('검색 결과가 없습니다'),
                      );
                    }
                    return ListView.builder(
                      itemCount: searchList.length,
                      itemBuilder: (context, index) {
                        final document = searchList[index];
                        return BookItem(document: document);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _debouncedTextController?.dispose();
    super.dispose();
  }
}
