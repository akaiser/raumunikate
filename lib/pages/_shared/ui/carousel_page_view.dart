import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';

class CarouselPageView extends StatefulWidget {
  const CarouselPageView({
    required this.activeIndicatorColor,
    required this.children,
  });

  final Color activeIndicatorColor;
  final List<Widget> children;

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
    final itemCount = widget.children.length;
    return Stack(
      children: [
        PageView.builder(
          padEnds: false,
          scrollBehavior: context.defaultScrollBehavior,
          onPageChanged: (page) => _currentPageNotifier.value = page,
          itemCount: itemCount,
          itemBuilder: (_, index) => widget.children[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: _Indicators(
              widget.activeIndicatorColor,
              _currentPageNotifier,
              itemCount,
            ),
          ),
        ),
      ],
    );
  }
}

class _Indicators extends StatelessWidget {
  const _Indicators(
    this.activeIndicatorColor,
    this.currentPageNotifier,
    this.indicatorCount,
  );

  final Color activeIndicatorColor;
  final ValueNotifier<int> currentPageNotifier;
  final int indicatorCount;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: currentPageNotifier,
        builder: (_, currentPage, __) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < indicatorCount; i++)
              _Indicator(
                activeIndicatorColor,
                isActive: currentPage == i,
              ),
          ],
        ),
      );
}

class _Indicator extends StatelessWidget {
  const _Indicator(
    this.activeIndicatorColor, {
    required this.isActive,
  });

  final bool isActive;
  final Color activeIndicatorColor;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: navBarTransitionInMillis),
          decoration: BoxDecoration(
            color: isActive ? activeIndicatorColor : raumBackground,
            shape: BoxShape.circle,
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
