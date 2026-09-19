import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class const ResponsiveSlides({
  required final int _itemCount,
  required final IndexedWidgetBuilder _itemBuilder,
  final bool _omitTopPadding = false,
  super.key,
}) extends StatefulWidget {
  @override
  State<ResponsiveSlides> createState() => _ResponsiveSlidesState();
}

class _ResponsiveSlidesState extends State<ResponsiveSlides> {
  late PageController _controller;

  static const _viewportFractions = <Breakpoint, double>{
    .xxl: 0.2,
    .xl: 0.3,
    .l: 0.4,
    .m: 0.5,
    .s: 0.6,
    .xs: 0.8,
  };

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = PageController(
      viewportFraction: _viewportFractions[context.breakpoint] ?? 1,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return PageView.builder(
      controller: _controller,
      scrollBehavior: context.defaultScrollBehavior,
      itemCount: widget._itemCount,
      padEnds: isSxsBreakpoint,
      itemBuilder: (context, index) {
        final child = _FractionallySizedBox(
          isSxsBreakpoint: isSxsBreakpoint,
          child: widget._itemBuilder(context, index),
        );

        return widget._omitTopPadding
            ? child
            : Padding(
                padding: const .only(top: navigationBarHeight - 20),
                child: child,
              );
      },
    );
  }
}

class const _FractionallySizedBox({
  required final bool _isSxsBreakpoint,
  required final Widget _child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FractionallySizedBox(
    widthFactor: 0.9,
    heightFactor: _isSxsBreakpoint ? 0.8 : 0.6,
    child: _child,
  );
}
