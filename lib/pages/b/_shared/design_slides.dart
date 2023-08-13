import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/b/_shared/design_slide_data_entry.dart';

abstract class DesignSlides extends StatelessWidget {
  const DesignSlides({
    this.leading,
    required this.slidesData,
  });

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

  final List<DesignSlideDataEntry> slidesData;

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
                    child: SingleChildScrollView(
                      child: _SlideCard(
                        slideData,
                        key: Key('design-card-$index'),
                      ),
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
        itemBuilder: (_, index) => _SlideCard(
          slidesData[index],
          key: Key('design-slide-card-$index'),
        ),
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
      color: entry.cardColor.withOpacity(0.85),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: isXsBreakpoint ? 16 : 32,
        ),
        child: Column(
          children: [
            Text(
              entry.title,
              style: context.tt.label?.copyWith(color: entry.textColor),
            ),
            if (title2 != null) ...[
              const SizedBox(height: 10),
              Text(
                title2,
                style: context.tt.label?.copyWith(color: entry.textColor),
              ),
            ],
            SizedBox(height: isXsBreakpoint ? 8 : 48),
            _Text(entry),
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
  Widget build(BuildContext context) => Text(
        entry.text,
        style: context.tt.body?.copyWith(
          color: entry.textColor,
          fontSize: context.isShittySmallDevice ? 15 : 18,
        ),
        textAlign: TextAlign.center,
      );
}
