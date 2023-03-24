import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/c/_data.dart' as data;

class HomeContentsSection extends StatelessWidget {
  const HomeContentsSection({super.key});

  @override
  Widget build(BuildContext context) => const CoverImageBox(
        Assets.homeContents,
        colorFilter: ColorFilter.mode(mainTODO_0, BlendMode.srcATop),
        child: Slides(),
      );
}

class Slides extends StatelessWidget {
  const Slides({super.key});

  static const _viewportFractions = {
    Breakpoint.xxl: 0.2,
    Breakpoint.xl: 0.3,
    Breakpoint.l: 0.4,
    Breakpoint.m: 0.5,
    Breakpoint.s: 0.6,
    Breakpoint.xs: 0.8,
  };

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return Padding(
      padding: const EdgeInsets.only(top: navigationBarHeight - 20),
      child: PageView.builder(
        controller: PageController(
          viewportFraction: _viewportFractions[context.breakpoint] ?? 1,
        ),
        itemCount: data.slidesData.length,
        padEnds: isSxsBreakpoint,
        itemBuilder: (context, index) => FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: isSxsBreakpoint ? 0.7 : 0.5,
          child: _Slide(data.slidesData[index]),
        ),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide(this.entry);

  final data.SlideDataEntry entry;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: entry.backgroundColor.withOpacity(0.85),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Text(
                entry.title,
                style: context.tt.label?.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 40),
              Text(
                entry.text,
                textAlign: TextAlign.center,
                style: context.tt.body?.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 40),
              const Spacer(),
              ActionButton(
                data.linkText,
                onTap: () => context.go(entry.linkPagePath),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      );
}
