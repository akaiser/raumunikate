import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/c/_data.dart' as data;

class HomeContentSlides extends StatefulWidget {
  const HomeContentSlides({super.key});

  @override
  State<HomeContentSlides> createState() => _HomeContentSlidesState();
}

class _HomeContentSlidesState extends State<HomeContentSlides> {
  late PageController _controller;

  static const _viewportFractions = {
    Breakpoint.xxl: 0.2,
    Breakpoint.xl: 0.3,
    Breakpoint.l: 0.4,
    Breakpoint.m: 0.5,
    Breakpoint.s: 0.6,
    Breakpoint.xs: 0.8,
  };

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = PageController(
      viewportFraction: _viewportFractions[context.breakpoint] ?? 1,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return PageView.builder(
      controller: _controller,
      itemCount: data.slidesData.length,
      padEnds: isSxsBreakpoint,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: navigationBarHeight - 20),
        child: FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: isSxsBreakpoint ? 0.7 : 0.5,
          child: _SlideCard(data.slidesData[index]),
        ),
      ),
    );
  }
}

class _SlideCard extends StatelessWidget {
  const _SlideCard(this.entry);

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
                style: context.tt.body?.copyWith(
                  color: data.textColor,
                  fontSize: 16,
                ),
              ),
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

class _Spacer extends StatelessWidget {
  const _Spacer();

  @override
  Widget build(BuildContext context) => context.isShittySmallDevice
      ? const SizedBox(height: 30)
      : const SizedBox(height: 60);
}
