import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

const baseScrollPageKey = Key('base-scroll-page');

class BaseScrollPage extends StatelessWidget {
  const BaseScrollPage({this.preferListView = false, required this.children});

  final bool preferListView;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final _children = [
      const Gap(navigationBarHeightExpanded),
      ...children,
      const Gap(16),
      const Divider(),
      const Gap(8),
      const Footer(),
    ];
    return ResponsiveLayout(
      xl: (_) => _BaseScrollPage(
        preferListView: preferListView,
        padding: textHorizontalPaddingXl,
        children: _children,
      ),
      l: (_) => _BaseScrollPage(
        preferListView: preferListView,
        padding: textHorizontalPaddingL,
        children: _children,
      ),
      xs: (_) => _BaseScrollPage(
        preferListView: preferListView,
        padding: textHorizontalPaddingXs,
        children: _children,
      ),
    );
  }
}

class _BaseScrollPage extends StatefulWidget {
  const _BaseScrollPage({
    required this.preferListView,
    required this.padding,
    required this.children,
  });

  final bool preferListView;
  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  State<_BaseScrollPage> createState() => _BaseScrollPageState();
}

class _BaseScrollPageState extends State<_BaseScrollPage> {
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void get _scrollToTop => _controller.animateTo(
    0,
    duration: const Duration(milliseconds: pageTransitionInMillis),
    curve: Curves.ease,
  );

  Future<void> get _onScrollUpRequest async {
    await _controller.animateTo(
      _controller.offset + context.screenSize.height,
      duration: const Duration(milliseconds: pageTransitionInMillis),
      curve: Curves.ease,
    );
  }

  Future<void> get _onScrollDownRequest async {
    if (_controller.offset != 0) {
      await _controller.animateTo(
        _controller.offset - context.screenSize.height,
        duration: const Duration(milliseconds: pageTransitionInMillis),
        curve: Curves.ease,
      );
    }
  }

  @override
  Widget build(BuildContext context) => BasePage(
    onScrollToTopTap: () => _scrollToTop,
    onScrollUpRequest: () => _onScrollUpRequest,
    onScrollDownRequest: () => _onScrollDownRequest,
    child: widget.preferListView
        ? _ListView(
            _controller,
            padding: widget.padding,
            children: widget.children,
          )
        : _SingleChildScrollView(
            _controller,
            padding: widget.padding,
            children: widget.children,
          ),
  );
}

class _ListView extends StatelessWidget {
  const _ListView(
    this.controller, {
    required this.padding,
    required this.children,
  });

  final ScrollController controller;
  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => ListView.builder(
    key: baseScrollPageKey,
    controller: controller,
    padding: padding,
    itemCount: children.length,
    itemBuilder: (_, index) => children[index],
  );
}

class _SingleChildScrollView extends StatelessWidget {
  const _SingleChildScrollView(
    this.controller, {
    required this.padding,
    required this.children,
  });

  final ScrollController controller;
  final EdgeInsetsGeometry padding;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    key: baseScrollPageKey,
    controller: controller,
    padding: padding,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    ),
  );
}
