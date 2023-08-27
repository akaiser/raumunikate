import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/d/c/_data.dart' as data;
import 'package:raumunikate/pages/d/c/_products_slide_data.dart';

class ProductsTypeSlides extends StatelessWidget {
  const ProductsTypeSlides({super.key});

  @override
  Widget build(BuildContext context) => CoverImageBox(
        Images.waben1,
        child: Column(
          children: [
            const SizedBox(height: navigationBarHeight),
            Padding(
              padding: EdgeInsets.fromLTRB(
                20,
                context.isFullWidthNavBar ? 32 : 0,
                20,
                0,
              ),
              child: const HeadlineText(
                data.title,
                textColor: mainBackgroundColor,
              ),
            ),
            Expanded(
              child: ResponsiveLayout(
                xl: (_) => const _Cards(),
                xs: (_) => const _ResponsiveSlides(),
              ),
            ),
          ],
        ),
      );
}

class _Cards extends StatelessWidget {
  const _Cards();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
        child: Row(
          children: data.slidesData
              .mapIndexed<Widget>(
                (index, slideData) => Expanded(
                  child: FractionallySizedBox(
                    widthFactor: 0.8,
                    heightFactor: 0.6,
                    child: _SlideCard(
                      slideData,
                      key: Key('products-card-$index'),
                    ),
                  ),
                ),
              )
              .unmodifiable,
        ),
      );
}

class _ResponsiveSlides extends StatelessWidget {
  const _ResponsiveSlides();

  @override
  Widget build(BuildContext context) => ResponsiveSlides(
        itemCount: data.slidesData.length,
        itemBuilder: (_, index) => _SlideCard(
          data.slidesData[index],
          key: Key('products-slide-card-$index'),
        ),
        omitTopPadding: true,
      );
}

class _SlideCard extends StatelessWidget {
  const _SlideCard(this.entry, {super.key});

  final ProductsSlideDataEntry entry;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: CoverImageBox(entry.image),
            ),
          ),
          ColoredBox(
            color: mainBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const _Spacer(),
                  Text(entry.title, style: context.tt.label),
                  const _Spacer(),
                  Text(entry.subtitle, textAlign: TextAlign.center),
                  const _Spacer(),
                  Text(entry.price),
                  const _Spacer(),
                ],
              ),
            ),
          ),
        ],
      );
}

class _Spacer extends StatelessWidget {
  const _Spacer();

  @override
  Widget build(BuildContext context) {
    final isXsBreakpoint = context.isXsBreakpoint;
    return SizedBox(height: isXsBreakpoint ? 8 : 16);
  }
}
