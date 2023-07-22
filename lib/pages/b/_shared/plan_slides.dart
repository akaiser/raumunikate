import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/b/_shared/plan_slide_data_entry.dart';

abstract class PlanSlidesSlides extends StatelessWidget {
  const PlanSlidesSlides({
    this.leading,
    required this.slidesData,
  });

  final Widget? leading;
  final List<PlanSlideDataEntry> slidesData;

  @override
  Widget build(BuildContext context) {
    final cards = ResponsiveLayout(
      xl: (_) => _Cards(slidesData),
      xs: (_) => _ResponsiveSlides(slidesData),
    );

    return leading == null
        ? cards
        : Column(
            children: [
              const SizedBox(height: navigationBarHeight),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  context.isFullWidthNavBar ? 32 : 0,
                  20,
                  0,
                ),
                child: leading,
              ),
              Expanded(child: cards),
            ],
          );
  }
}

class _Cards extends StatelessWidget {
  const _Cards(this.slidesData);

  final List<PlanSlideDataEntry> slidesData;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Row(
          children: slidesData
              .mapIndexed<Widget>(
                (index, slideData) => Expanded(
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    heightFactor: 0.6,
                    child: _SlideCard(
                      slideData,
                      key: Key('plan-card-$index'),
                    ),
                  ),
                ),
              )
              .unmodifiable,
        ),
      );
}

class _ResponsiveSlides extends StatelessWidget {
  const _ResponsiveSlides(this.slidesData);

  final List<PlanSlideDataEntry> slidesData;

  @override
  Widget build(BuildContext context) => ResponsiveSlides(
        itemCount: slidesData.length,
        itemBuilder: (_, index) => _SlideCard(
          slidesData[index],
          key: Key('plan-slide-card-$index'),
        ),
        omitTopPadding: true,
      );
}

class _SlideCard extends StatelessWidget {
  const _SlideCard(this.entry, {super.key});

  final PlanSlideDataEntry entry;

  @override
  Widget build(BuildContext context) {
    final isXsBreakpoint = context.isXsBreakpoint;
    final title2 = entry.title2;

    return ColoredBox(
      color: mainTODO_4.withOpacity(0.85),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: isXsBreakpoint ? 16 : 48,
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.title,
              style: context.tt.label,
            ),
            if (title2 != null) ...[
              const SizedBox(height: 10),
              Text(
                title2,
                style: context.tt.label,
              ),
            ],
            SizedBox(height: isXsBreakpoint ? 8 : 48),
            _Text(entry.text),
          ],
        ),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: context.tt.body?.copyWith(
          fontSize: context.isShittySmallDevice ? 15 : 18,
        ),
        textAlign: TextAlign.center,
      );
}
