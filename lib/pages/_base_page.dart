import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/nav_bar/nav_bar.dart';

class BasePage extends StatefulWidget {
  const BasePage({
    required this.onScrollToTopTap,
    required this.child,
    super.key,
  });

  final VoidCallback onScrollToTopTap;
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
              () => context.go(Routes.homePage),
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
          _ScrollToTopArrow(widget.onScrollToTopTap),
        ],
      ),
    );
  }
}

class _ScrollToTopArrow extends StatelessWidget {
  const _ScrollToTopArrow(this.onTap,
  );

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Consumer<NavBarNotifier>(
        builder: (context, navBarNotifier, child) => AnimatedPositioned(
          duration: const Duration(milliseconds: navBarTransitionInMillis),
          curve: Curves.ease,
          right: 16,
          bottom: navBarNotifier.isExpanded ? -64 : 16,
          child: child ?? const SizedBox(),
        ),
        child: IconButton(
          onPressed: onTap,
          iconSize: 42,
          icon: const ImageIcon(
            color: mainTODO_1,
            AssetImage(Images.arrowUp),
          ),
        ),
      );
}
