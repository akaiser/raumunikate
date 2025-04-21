import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class ResponsiveSlides extends StatefulWidget {
  const ResponsiveSlides({
    required this.itemCount,
    required this.itemBuilder,
    this.omitTopPadding = false,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final bool omitTopPadding;

  @override
  State<ResponsiveSlides> createState() => _ResponsiveSlidesState();
}

class _ResponsiveSlidesState extends State<ResponsiveSlides> {
  late PageController _controller;

  static const _viewportFractions = {
    Breakpoint.xxl: 0.2,
    Breakpoint.xl: 0.3,
    Breakpoint.l: 0.4,
    Breakpoint.m: 0.5,
    Breakpoint.s: 0.6,
    Breakpoint.xs: 0.8,
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
      itemCount: widget.itemCount,
      padEnds: isSxsBreakpoint,
      itemBuilder: (context, index) {
        final child = _FractionallySizedBox(
          isSxsBreakpoint: isSxsBreakpoint,
          child: widget.itemBuilder(context, index),
        );

        return widget.omitTopPadding
            ? child
            : Padding(
              padding: const EdgeInsets.only(top: navigationBarHeight - 20),
              child: child,
            );
      },
    );
  }
}

class _FractionallySizedBox extends StatelessWidget {
  const _FractionallySizedBox({
    required this.isSxsBreakpoint,
    required this.child,
  });

  final bool isSxsBreakpoint;
  final Widget child;

  @override
  Widget build(BuildContext context) => FractionallySizedBox(
    widthFactor: 0.9,
    heightFactor: isSxsBreakpoint ? 0.8 : 0.6,
    child: child,
  );
}
