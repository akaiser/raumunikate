import 'package:go_router/go_router.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/c/_data.dart' as data;

class HomeContentSlides extends StatelessWidget {
  const HomeContentSlides();

  @override
  Widget build(BuildContext context) => ResponsiveSlides(
        itemCount: data.slidesData.length,
        itemBuilder: (_, index) => _SlideCard(
          data.slidesData[index],
          key: Key('home-content-slide-card-$index'),
        ),
      );
}

class _SlideCard extends StatelessWidget {
  const _SlideCard(this.entry, {super.key});

  final data.SlideDataEntry entry;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: entry.backgroundColor.withOpacity(0.85),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const _Spacer(),
              Text(
                entry.title,
                style: context.tt.label?.copyWith(color: data.textColor),
              ),
              const _Spacer(),
              Text(
                entry.text,
                textAlign: TextAlign.center,
                style: context.dts.copyWith(color: data.textColor),
              ),
              const Spacer(),
              ActionButton(
                data.linkText,
                onTap: () => context.go(entry.linkPagePath),
              ),
              const Gap(30),
            ],
          ),
        ),
      );
}

class _Spacer extends StatelessWidget {
  const _Spacer();

  @override
  Widget build(BuildContext context) =>
      context.isShittySmallDevice ? const Gap(30) : const Gap(60);
}
