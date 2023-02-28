import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/about_page.dart';

final router = GoRouter(
  initialLocation: HomePage.path,
  routes: [
    GoRoute(
      path: HomePage.path,
      pageBuilder: (_, state) => _page(state, const HomePage()),
    ),
    GoRoute(
      path: AboutPage.path,
      pageBuilder: (_, state) => _page(state, const AboutPage()),
    ),
  ],
);

CustomTransitionPage<Widget> _page(
  GoRouterState state,
  Widget page,
) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: const Duration(
        milliseconds: transitionsDurationInMillis,
      ),
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: CurveTween(curve: Curves.ease).animate(animation),
        child: child,
      ),
    );
