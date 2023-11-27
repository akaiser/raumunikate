import 'package:flutter/widgets.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

const baseSlidePageKey = Key('base-slide-page');

class BaseSlidePage extends StatefulWidget {
  const BaseSlidePage({required this.children});

  final List<Widget> children;

  @override
  State<BaseSlidePage> createState() => _BaseSlidePageState();
}

class _BaseSlidePageState extends State<BaseSlidePage> {
  late final PageController _controller;
  late final ScrollToBottomNotifier _scrollToBottomNotifier;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _scrollToBottomNotifier = context.scrollToBottomNotifier
      ..addListener(_scrollToBottom);
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollToBottomNotifier.removeListener(_scrollToBottom);
    super.dispose();
  }

  void _scrollToTop() => _controller.animateToPage(
        0,
        duration: const Duration(milliseconds: pageTransitionInMillis),
        curve: Curves.ease,
      );

  void _scrollToBottom() => _controller.animateToPage(
        widget.children.length,
        duration: const Duration(milliseconds: pageTransitionInMillis),
        curve: Curves.ease,
      );

  void _onScrollUpRequest() {
    if (widget.children.length != _controller.page?.toInt()) {
      _controller.nextPage(
        duration: const Duration(milliseconds: pageTransitionInMillis),
        curve: Curves.ease,
      );
    }
  }

  void _onScrollDownRequest() {
    if (_controller.page?.toInt() != 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: pageTransitionInMillis),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final _children = [...widget.children, const _Footer()];
    return BasePage(
      onScrollToTopTap: _scrollToTop,
      onScrollUpRequest: _onScrollUpRequest,
      onScrollDownRequest: _onScrollDownRequest,
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
    top: navigationBarHeight + 100,
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
      child: const Footer(),
    );
  }
}
