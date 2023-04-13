import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

const baseSlidePageKey = Key('base-slide-page');

class BaseSlidePage extends StatelessWidget {
  const BaseSlidePage({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final _children = [...children, const _Footer()];
    return BasePage(
      child: PageView.builder(
        key: baseSlidePageKey,
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
      child: Column(
        children: const [
          Spacer(),
          Footer(),
        ],
      ),
    );
  }
}
