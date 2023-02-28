import 'dart:async' show runZonedGuarded;
import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/_theme.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

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
  Widget build(BuildContext context) => FadeIn(
        millis: 1000,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: theme,
          title: appName,
          routerConfig: router,
        ),
      );
}
