import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/footer/footer.dart';
import 'package:raumunikate/pages/nav_bar/nav_bar.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) => _BasePage(
        children: [...children, const Footer()],
      );
}

class _BasePage extends StatefulWidget {
  const _BasePage({required this.children});

  final List<Widget> children;

  @override
  State<_BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<_BasePage> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final navBarNotifier = context.read<NavBarNotifier>();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => context.go(HomePage.path),
        child: Scrollbar(
          controller: _scrollController,
          notificationPredicate: (notification) {
            if (notification.metrics.axis == Axis.vertical) {
              final isAtTop = notification.metrics.pixels <= 0;
              if (navBarNotifier.isExpanded != isAtTop) {
                navBarNotifier.toggle;
              }
            }
            return true;
          },
          child: Stack(
            children: [
              ListView.builder(
                controller: _scrollController,
                itemCount: widget.children.length,
                itemBuilder: (_, index) => widget.children[index],
              ),
              const Positioned(child: NavBar()),
            ],
          ),
        ),
      ),
    );
  }
}
