import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_sample/feature/home/home_screen.dart';
import 'package:flutter_sample/feature/home/home_viewmodel.dart';
import 'routes.dart';

GoRouter router() => GoRouter(initialLocation: Routes.home, routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          return HomeScreen(
            viewModel: HomeViewModel(getSearchBooksUseCase: context.read()),
          );
        },
      )
    ]);
