import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey/src/core/widgets/smart_widgets/main_widget.dart';
import 'package:meal_monkey/src/features/about/presentation/pages/about_us_page.dart';
import 'package:meal_monkey/src/features/checkout/presentation/pages/checkout_page.dart';
import 'package:meal_monkey/src/features/inbox/presentation/pages/inbox_page.dart';
import 'package:meal_monkey/src/features/my_order/presentation/pages/my_order.dart';
import 'package:meal_monkey/src/features/notification/presentation/page/notification_page.dart';

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
          GoRoute(
            name: 'notification',
            path: '/notification',
            builder: (context, state) => const NotificationPage(),
          ),
          GoRoute(
            name: 'about',
            path: '/about-us',
            builder: (context, state) => const AboutUsPage(),
          ),
          GoRoute(
            name: 'my-order',
            path: '/my-order',
            builder: (context, state) => const MyOrderPage(),
          ),
          GoRoute(
            name: 'checkout',
            path: '/checkout',
            builder: (context, state) => const CheckoutPage(),
          ),
          GoRoute(
            name: 'inbox',
            path: '/inbox',
            builder: (context, state) => const InboxPage(),
          ),
        ],
      );
}
