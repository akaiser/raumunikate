import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

const baseSlidePageKey = Key('base-slide-page');

class BaseSlidePage extends StatefulWidget {
  const BaseSlidePage({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  State<BaseSlidePage> createState() => _BaseSlidePageState();
}

class _BaseSlidePageState extends State<BaseSlidePage> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void get _scrollToTop => _controller.animateToPage(
        0,
        duration: const Duration(milliseconds: pageTransitionInMillis),
        curve: Curves.ease,
      );

  @override
  Widget build(BuildContext context) {
    final _children = [...widget.children, const _Footer()];
    return BasePage(
      onScrollToTopTap: () => _scrollToTop,
      child: PageView.builder(
        key: baseSlidePageKey,
        controller: _controller,
        scrollDirection: Axis.vertical,
        itemCount: _children.length,
        itemBuilder: (_, index) => _children[index],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer();

  static const _bigPadding = EdgeInsets.only(
    left: 110,
    top: navigationBarHeight,
    right: 110,
  );

  static const _smallPadding = EdgeInsets.only(
    left: 20,
    top: navigationBarHeight,
    right: 20,
  );

  @override
  Widget build(BuildContext context) {
    final isFullWidthNavBar = context.isFullWidthNavBar;

    return Padding(
      padding: isFullWidthNavBar ? _bigPadding : _smallPadding,
      child: const Column(
        children: [
          Spacer(),
          Footer(),
        ],
      ),
    );
  }
}
