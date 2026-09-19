import 'package:auto_size_text/auto_size_text.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/b/_shared/design_slide_data_entry.dart';

abstract class const DesignSlides({
  required final List<DesignSlideDataEntry> _slidesData,
  final Widget? _leading,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cards = ResponsiveLayout(
      xl: (_) => _Cards(_slidesData),
      xs: (_) => _ResponsiveSlides(_slidesData),
    );

    return _leading == null
        ? cards
        : Column(
            children: [
              const Gap(navigationBarHeight),
              Padding(
                padding: .fromLTRB(
                  20,
                  context.isFullWidthNavBar ? 32 : 0,
                  20,
                  0,
                ),
                child: _leading,
              ),
              Expanded(child: cards),
            ],
          );
  }
}

class const _Cards(final List<DesignSlideDataEntry> _slidesData)
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const .symmetric(horizontal: 80),
    child: Row(
      children: _slidesData
          .mapIndexed(
            (index, slideData) => Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.6,
                child: _SlideCard(slideData, key: Key('design-card-$index')),
              ),
            ),
          )
          .unmodifiable,
    ),
  );
}

class const _ResponsiveSlides(final List<DesignSlideDataEntry> _slidesData)
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveSlides(
    itemCount: _slidesData.length,
    itemBuilder: (_, index) =>
        _SlideCard(_slidesData[index], key: Key('design-slide-card-$index')),
    omitTopPadding: true,
  );
}

class const _SlideCard(final DesignSlideDataEntry _entry, {super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isXsBreakpoint = context.isXsBreakpoint;
    final title2 = _entry.title2;

    return ColoredBox(
      color: _entry.cardColor.withValues(alpha: 0.85),
      child: Padding(
        padding: const .symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(isXsBreakpoint ? 16 : 32),
            Text(
              _entry.title,
              style: context.tt.label?.copyWith(color: _entry.textColor),
            ),
            if (title2 != null) ...[
              const Gap(10),
              Text(
                title2,
                style: context.tt.label?.copyWith(color: _entry.textColor),
              ),
            ],
            Gap(isXsBreakpoint ? 8 : 48),
            Flexible(child: _Text(_entry)),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}

class const _Text(final DesignSlideDataEntry _entry) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => AutoSizeText(
    _entry.text,
    style: context.dts.copyWith(color: _entry.textColor),
    textAlign: .center,
  );
}
