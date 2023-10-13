import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/hover_region.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
    this.text, {
    required this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => HoverRegion(
        onTap: onTap,
        builder: (context, isHovering, child) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 2,
              color: isHovering ? raumCreme : raumBackground,
            ),
          ),
          child: child,
        ),
        child: _ActionButtonText(text, enabled: onTap != null),
      );
}

class _ActionButtonText extends StatelessWidget {
  const _ActionButtonText(
    this.text, {
    required this.enabled,
  });

  final String text;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: context.dts.copyWith(
          color: raumCreme.withOpacity(enabled ? 1 : 0.7),
          fontSize: context.isShittySmallDevice ? 16 : null,
        ),
      );
}
