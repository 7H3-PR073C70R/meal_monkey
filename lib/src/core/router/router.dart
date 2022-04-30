import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey/src/core/widgets/smart_widgets/main_widget.dart';

class Routes {
  const Routes._();
  static GoRouter route() => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            redirect: (_) => '${MainPage.path}/${2}',
          ),
          GoRoute(
            path: '${MainPage.path}/:id',
            builder: (context, state) => Material(
              child: MainPage(
                key: state.pageKey,
                index: int.parse(state.params['id']!),
              ),
            ),
            routes: [],
          ),
        ],
      );
}
