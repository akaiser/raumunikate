import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/hover_region.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class const ActionButton(
  final String _text, {
  required final VoidCallback? _onTap,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => HoverRegion(
    onTap: _onTap,
    builder: (context, isHovering, child) => Container(
      padding: const .only(left: 16, top: 2, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const .all(Radius.circular(20)),
        border: Border.all(
          width: 2,
          color: isHovering && _onTap != null ? raumCreme : raumBackground,
        ),
      ),
      child: child,
    ),
    child: _ActionButtonText(_text, enabled: _onTap != null),
  );
}

class const _ActionButtonText(
  final String _text, {
  required final bool _enabled,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(
    _text,
    style: context.dts.copyWith(
      color: raumCreme.withValues(alpha: _enabled ? 1 : 0.6),
      fontSize: context.isShittySmallDevice ? 16 : null,
    ),
  );
}
