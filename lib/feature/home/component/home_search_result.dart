import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/feature/home/bloc/home_bloc.dart';
import 'package:flutter_sample/feature/home/component/search_empty_page.dart';
import 'package:flutter_sample/feature/home/component/search_list_page.dart';

class HomeSearchResult extends StatelessWidget {
  const HomeSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(listener: (context, state) {
      if (state is SearchFailure) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.message)));
      }
    }, builder: (context, state) {
      return switch (state) {
        SearchEmpty() => SearchEmptyPage(),
        SearchFailure() => const SizedBox.shrink(),
        SearchSuccess() => state.items.isEmpty
            ? SearchEmptyPage()
            : SearchListPage(items: state.items)
      };
    });
  }
}
