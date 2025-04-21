import 'package:auto_size_text/auto_size_text.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/b/_shared/design_slide_data_entry.dart';

abstract class DesignSlides extends StatelessWidget {
  const DesignSlides({this.leading, required this.slidesData});

  final Widget? leading;
  final List<DesignSlideDataEntry> slidesData;

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
            const Gap(navigationBarHeight),
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

  final List<DesignSlideDataEntry> slidesData;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 80),
    child: Row(
      children:
          slidesData
              .mapIndexed(
                (index, slideData) => Expanded(
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    heightFactor: 0.6,
                    child: _SlideCard(
                      slideData,
                      key: Key('design-card-$index'),
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

  final List<DesignSlideDataEntry> slidesData;

  @override
  Widget build(BuildContext context) => ResponsiveSlides(
    itemCount: slidesData.length,
    itemBuilder:
        (_, index) =>
            _SlideCard(slidesData[index], key: Key('design-slide-card-$index')),
    omitTopPadding: true,
  );
}

class _SlideCard extends StatelessWidget {
  const _SlideCard(this.entry, {super.key});

  final DesignSlideDataEntry entry;

  @override
  Widget build(BuildContext context) {
    final isXsBreakpoint = context.isXsBreakpoint;
    final title2 = entry.title2;

    return ColoredBox(
      color: entry.cardColor.withValues(alpha: 0.85),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(isXsBreakpoint ? 16 : 32),
            Text(
              entry.title,
              style: context.tt.label?.copyWith(color: entry.textColor),
            ),
            if (title2 != null) ...[
              const Gap(10),
              Text(
                title2,
                style: context.tt.label?.copyWith(color: entry.textColor),
              ),
            ],
            Gap(isXsBreakpoint ? 8 : 48),
            Flexible(child: _Text(entry)),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(this.entry);

  final DesignSlideDataEntry entry;

  @override
  Widget build(BuildContext context) => AutoSizeText(
    entry.text,
    style: context.dts.copyWith(color: entry.textColor),
    textAlign: TextAlign.center,
  );
}
