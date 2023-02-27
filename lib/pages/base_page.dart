import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/pages/nav_bar.dart';

class BasePage extends StatefulWidget {
  const BasePage({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
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
      body: Scrollbar(
        controller: _scrollController,
        notificationPredicate: (notification) {
          if (notification.metrics.axis == Axis.vertical) {
            final metrics = notification.metrics;
            final currentOffset = metrics.pixels;
            final isAtTop = metrics.atEdge && currentOffset == 0;
            if (navBarNotifier.isExpanded == isAtTop) {
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
    );
  }
}
