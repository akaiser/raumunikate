import 'dart:async' show runZonedGuarded;
import 'dart:developer' show log;

import 'package:raumunikate/_environment.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/_theme.dart';

void main() {
  Environment.init();

  runZonedGuarded<void>(
    () => runApp(const App()),
    (error, stack) => log(
      'Some Explosion...',
      error: error,
      stackTrace: stack,
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavBarNotifier()),
          ChangeNotifierProvider(create: (_) => ScrollToBottomNotifier()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: theme,
          title: appName,
          routerConfig: router,
        ),
      );
}
