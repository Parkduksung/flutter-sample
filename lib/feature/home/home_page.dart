import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample/feature/home/component/home_search_result.dart';

import 'component/home_search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  HomeSearchBar(),
                  const SizedBox(height: 20),
                  HomeSearchResult()
                ],
              ))),
    );
  }
}
