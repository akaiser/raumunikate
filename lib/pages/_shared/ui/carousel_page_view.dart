import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';

class const CarouselPageView(
  final Color _activeIndicatorColor, {
  required final List<Widget> _children,
  super.key,
}) extends StatefulWidget {
  @override
  State<CarouselPageView> createState() => _CarouselPageViewState();
}

class _CarouselPageViewState extends State<CarouselPageView> {
  late final ValueNotifier<int> _currentPageNotifier;

  @override
  void initState() {
    super.initState();
    _currentPageNotifier = ValueNotifier(0);
  }

  @override
  void dispose() {
    _currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final itemCount = widget._children.length;
    return Stack(
      children: [
        PageView.builder(
          padEnds: false,
          scrollBehavior: context.defaultScrollBehavior,
          onPageChanged: (page) => _currentPageNotifier.value = page,
          itemCount: itemCount,
          itemBuilder: (_, index) => widget._children[index],
        ),
        Align(
          alignment: .bottomCenter,
          child: Padding(
            padding: const .only(bottom: 40),
            child: _Indicators(
              widget._activeIndicatorColor,
              _currentPageNotifier,
              itemCount,
            ),
          ),
        ),
      ],
    );
  }
}

class const _Indicators(
  final Color _activeIndicatorColor,
  final ValueNotifier<int> _currentPageNotifier,
  final int _indicatorCount,
) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: _currentPageNotifier,
    builder: (_, currentPage, _) => Row(
      mainAxisAlignment: .center,
      children: [
        for (int i = 0; i < _indicatorCount; i++)
          _Indicator(_activeIndicatorColor, isActive: currentPage == i),
      ],
    ),
  );
}

class const _Indicator(
  final Color _activeIndicatorColor, {
  required final bool _isActive,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const .symmetric(horizontal: 4),
    child: AnimatedContainer(
      duration: const Duration(milliseconds: navBarTransitionInMillis),
      decoration: BoxDecoration(
        color: _isActive ? _activeIndicatorColor : raumBackground,
        shape: .circle,
        boxShadow: const [
          BoxShadow(
            color: raumGrau,
            //spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: const Gap(16),
    ),
  );
}
