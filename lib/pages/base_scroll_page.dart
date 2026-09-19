import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

const baseScrollPageKey = Key('base-scroll-page');

class const BaseScrollPage({
  required final List<Widget> _children,
  final bool _preferListView = false,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final children = [
      const Gap(navigationBarHeightExpanded),
      ..._children,
      const Gap(16),
      const Divider(),
      const Gap(8),
      const Footer(),
    ];
    return ResponsiveLayout(
      xl: (_) => _BaseScrollPage(
        preferListView: _preferListView,
        padding: textHorizontalPaddingXl,
        children: children,
      ),
      l: (_) => _BaseScrollPage(
        preferListView: _preferListView,
        padding: textHorizontalPaddingL,
        children: children,
      ),
      xs: (_) => _BaseScrollPage(
        preferListView: _preferListView,
        padding: textHorizontalPaddingXs,
        children: children,
      ),
    );
  }
}

class const _BaseScrollPage({
  required final bool _preferListView,
  required final EdgeInsetsGeometry _padding,
  required final List<Widget> _children,
}) extends StatefulWidget {
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
    child: widget._preferListView
        ? _ListView(
            _controller,
            padding: widget._padding,
            children: widget._children,
          )
        : _SingleChildScrollView(
            _controller,
            padding: widget._padding,
            children: widget._children,
          ),
  );
}

class const _ListView(
  final ScrollController _controller, {
  required final EdgeInsetsGeometry _padding,
  required final List<Widget> _children,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.builder(
    key: baseScrollPageKey,
    controller: _controller,
    padding: _padding,
    itemCount: _children.length,
    itemBuilder: (_, index) => _children[index],
  );
}

class const _SingleChildScrollView(
  final ScrollController _controller, {
  required final EdgeInsetsGeometry _padding,
  required final List<Widget> _children,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    key: baseScrollPageKey,
    controller: _controller,
    padding: _padding,
    child: Column(crossAxisAlignment: .start, children: _children),
  );
}
