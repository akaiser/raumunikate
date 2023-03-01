import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_text.dart';
import 'package:raumunikate/pages/a/a/_data.dart' as data;
import 'package:raumunikate/pages/base_section.dart';

class HomeIntroSection extends StatelessWidget {
  const HomeIntroSection({super.key});

  @override
  Widget build(BuildContext context) => BaseSection(
        backgroundAsset: Assets.homeIntroDimmed,
        isIntroSection: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: navigationBarHeightExpanded),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ResponsiveText(
                data.introText,
                fontSizes: const [72, 56, 48, 32],
                textStyle: context.tt.headline?.copyWith(
                  color: Colors.white,
                ),
              ),
            )
            //SizedBox(height: navigationBarHeightExpanded),
            //_AnimatedBox(),
          ],
        ),
      );
}

class _AnimatedBox extends StatefulWidget {
  const _AnimatedBox();

  @override
  State<_AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<_AnimatedBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Animation<double> _curve;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _curve =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animation =
        Tween<double>(begin: 0, end: context.screenWidth).animate(_curve)
          ..addListener(() {
            if (_animation.isCompleted) {
              _animationController.reverse();
            } else if (_animation.isDismissed) {
              _animationController.forward();
            }
            setState(() {});
          });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Colors.black.withOpacity(0.1),
        child: SizedBox(
          width: _animation.value,
          height: context.screenHeight - 200,
        ),
      );
}
