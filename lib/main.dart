import 'dart:async' show runZonedGuarded;
import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/about_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  runZonedGuarded<void>(
    () => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavBarNotifier()),
        ],
        child: const _App(),
      ),
    ),
    (error, stack) => log(
      'Some Explosion...',
      error: error,
      stackTrace: stack,
    ),
  );
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        title: 'Raumunikate',
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      );
}

final _router = GoRouter(
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
