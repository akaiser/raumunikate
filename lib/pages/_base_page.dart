import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/nav_bar/nav_bar.dart';

class BasePage extends StatefulWidget {
  const BasePage({
    required this.onScrollToTopTap,
    required this.onScrollUpRequest,
    required this.onScrollDownRequest,
    required this.child,
  });

  final VoidCallback onScrollToTopTap;
  final VoidCallback onScrollUpRequest;
  final VoidCallback onScrollDownRequest;
  final Widget child;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  late final FocusNode _focus;

  @override
  void initState() {
    super.initState();
    _focus = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        // When navigating to new scaffold and NavBar was not expanded yet...
        final navBarNotifier = context.navBarNotifier;
        if (!navBarNotifier.isExpanded) {
          navBarNotifier.toggle();
        }
      },
    );
  }

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  void _onKeyEvent(KeyEvent event) {
    switch (event.logicalKey) {
      case LogicalKeyboardKey.arrowDown:
      case LogicalKeyboardKey.pageDown:
        widget.onScrollUpRequest();
      case LogicalKeyboardKey.arrowUp:
      case LogicalKeyboardKey.pageUp:
        widget.onScrollDownRequest();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final navBarNotifier = context.navBarNotifier;
    return Scaffold(
      body: DefaultTextStyle.merge(
        style: context.tt.body?.copyWith(color: raumGrau),
        child: Stack(
          children: [
            RefreshIndicator(
              color: raumGrau,
              edgeOffset: navigationBarHeightExpanded,
              notificationPredicate: (notification) {
                if (notification.metrics.axis == Axis.vertical) {
                  final isAtTop = notification.metrics.pixels <= 10;
                  if (navBarNotifier.isExpanded != isAtTop) {
                    navBarNotifier.toggle();
                  }
                }
                return true;
              },
              onRefresh: () => Future<void>.delayed(
                const Duration(milliseconds: pageTransitionInMillis),
                () {
                  if (context.mounted) {
                    context.go(Routes.homePage);
                  }
                },
              ),
              child: KeyboardListener(
                autofocus: true,
                focusNode: _focus,
                onKeyEvent: _onKeyEvent,
                child: ScrollConfiguration(
                  behavior: context.defaultScrollBehavior,
                  child: widget.child,
                ),
              ),
            ),
            const NavBar(),
            if (!kReleaseMode)
              Text(
                '${screenSize.width} x '
                '${screenSize.height} | '
                '${context.breakpoint.name}',
                style: context.tt.label?.copyWith(fontSize: 14),
              ),
            _ScrollToTopArrow(widget.onScrollToTopTap),
          ],
        ),
      ),
    );
  }
}

class _ScrollToTopArrow extends StatelessWidget {
  const _ScrollToTopArrow(this.onTap);

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
        child: ClickableRegion(
          onTap: onTap,
          child: Image.asset(Images.arrowUp, width: 42),
        ),
      );
}
