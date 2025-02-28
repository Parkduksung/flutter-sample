import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/feature/home/bloc/home_bloc.dart';
import 'package:flutter_sample/feature/home/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'routes.dart';

GoRouter router() => GoRouter(initialLocation: Routes.home, routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          return BlocProvider(
            create: (_) => HomeBloc(getSearchBooksUseCase: context.read()),
            child: const HomePage(),
          );
        },
      )
    ]);
