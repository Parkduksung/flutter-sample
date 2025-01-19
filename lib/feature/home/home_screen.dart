
import 'package:flutter/material.dart';
import 'package:flutter_sample/base/effect_base.dart';
import 'package:flutter_sample/feature/home/component/book_item.dart';
import 'package:flutter_sample/feature/home/home_contract.dart';
import 'package:flutter_sample/feature/home/home_viewmodel.dart';
import 'package:flutter_sample/ext/ext_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
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
                controller: widget.viewModel.textController,
                decoration: InputDecoration(
                  hintText: '검색어를 입력하세요',
                  border: const OutlineInputBorder(),
                ),
              ),
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
}
