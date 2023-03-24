import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/hover_region.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
    this.text, {
    required this.onTap,
    super.key,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: HoverRegion(
          builder: (context, isHovering, child) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                width: 2,
                color: isHovering ? mainTODO_1 : Colors.white,
              ),
            ),
            child: child,
          ),
          child: _ActionButtonText(text),
        ),
      );
}

class _ActionButtonText extends StatelessWidget {
  const _ActionButtonText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: context.tt.body?.copyWith(color: mainTODO_1),
      );
}
