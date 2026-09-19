import 'package:go_router/go_router.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/c/_data.dart' as data;

class const HomeContentSlides({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveSlides(
    itemCount: data.slidesData.length,
    itemBuilder: (_, index) => _SlideCard(
      data.slidesData[index],
      key: Key('home-content-slide-card-$index'),
    ),
  );
}

class const _SlideCard(final data.SlideDataEntry _entry, {super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ColoredBox(
    color: _entry.backgroundColor.withValues(alpha: 0.85),
    child: Padding(
      padding: const .symmetric(horizontal: 16),
      child: Column(
        children: [
          const _Spacer(),
          Text(
            _entry.title,
            style: context.tt.label?.copyWith(color: data.textColor),
          ),
          const _Spacer(),
          Text(
            _entry.text,
            textAlign: .center,
            style: context.dts.copyWith(color: data.textColor),
          ),
          const Spacer(),
          ActionButton(
            data.linkText,
            onTap: () => context.go(_entry.linkPagePath),
          ),
          const Gap(30),
        ],
      ),
    ),
  );
}

class const _Spacer() extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      context.isShittySmallDevice ? const Gap(30) : const Gap(60);
}
