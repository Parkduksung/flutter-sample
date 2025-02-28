import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/feature/home/bloc/home_bloc.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  final _textController = TextEditingController();
  late HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    _homeBloc = context.read<HomeBloc>();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _textController,
        onChanged: (text) {
          _homeBloc.add(TextChanged(text: text));
        },
        decoration: InputDecoration(
          hintText: '검색어를 입력하세요',
          border: const OutlineInputBorder(),
        ));
  }
}
