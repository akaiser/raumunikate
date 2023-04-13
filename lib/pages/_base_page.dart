import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/nav_bar/nav_bar.dart';

class BasePage extends StatefulWidget {
  const BasePage({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        // When navigating to new scaffold and NavBar was not expanded yet...
        final navBarNotifier = context.read<NavBarNotifier>();
        if (!navBarNotifier.isExpanded) {
          navBarNotifier.toggle;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final navBarNotifier = context.read<NavBarNotifier>();
    return Scaffold(
      body: Stack(
        children: [
          RefreshIndicator(
            color: mainTODO_0,
            edgeOffset: navigationBarHeightExpanded,
            notificationPredicate: (notification) {
              if (notification.metrics.axis == Axis.vertical) {
                final isAtTop = notification.metrics.pixels <= 10;
                if (navBarNotifier.isExpanded != isAtTop) {
                  navBarNotifier.toggle;
                }
              }
              return true;
            },
            onRefresh: () => Future<void>.delayed(
              const Duration(milliseconds: pageTransitionInMillis),
              () => context.go(HomePage.path),
            ),
            child: widget.child,
          ),
          const NavBar(),
          if (kDebugMode)
            Text(
              '${context.screenWidth} x '
              '${context.screenHeight} | '
              '${context.breakpoint.name}',
              style: context.tt.label?.copyWith(fontSize: 14),
            ),
        ],
      ),
    );
  }
}