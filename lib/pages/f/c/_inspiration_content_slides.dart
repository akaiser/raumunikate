import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/responsive_slides.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/f/c/_data.dart' as data;

class InspirationContentSlides extends StatelessWidget {
  const InspirationContentSlides();

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        xl: (_) => const _Cards(),
        xs: (_) => const _ResponsiveSlides(),
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
                      key: Key('inspiration-content-card-$index'),
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
          key: Key('inspiration-content-slide-card-$index'),
        ),
      );
}

class _SlideCard extends StatelessWidget {
  const _SlideCard(this.entry, {super.key});

  final data.SlideDataEntry entry;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Expanded(
            flex: 4,
            child: SizedBox.expand(
              child: ColoredBox(color: mainTODO_1, child: Text('TODO')),
            ),
          ),
          Expanded(
            flex: 3,
            child: ColoredBox(
              color: mainTODO_5.withOpacity(0.85),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entry.title,
                      style: context.tt.label,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      entry.text,
                      style: context.tt.body?.copyWith(
                        color: mainTODO_0.withOpacity(0.7),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      entry.footer,
                      style: context.dts.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
