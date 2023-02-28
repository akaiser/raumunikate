import 'package:flutter/material.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart' as data;

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) => PopupMenuButton<int>(
        //offset: Offset(100, 0),
        tooltip: '',
        color: mainBackgroundColor,
        icon: const Icon(
          Icons.menu_rounded,
          size: 36,
          color: mainTODO_0,
        ),
        onSelected: (_) {},
        itemBuilder: (_) => data.navData.entries
            .map(
              (entry) => PopupMenuItem<int>(
                value: entry.key,
                child: _MenuItem(entry),
              ),
            )
            .unmodifiable,
      );
}

class _MenuItem extends StatelessWidget {
  const _MenuItem(this.entry);

  final MapEntry<int, data.NavItem> entry;

  @override
  Widget build(BuildContext context) {
    final fontStyle = context.tt.labelMedium?.copyWith(
      fontWeight: FontWeight.w700,
    );
    return Text(
      entry.value.text.toUpperCase(),
      style: fontStyle?.copyWith(
          //color: ref.watch(currentSectionProvider) != entry.key
          //    ? Colors.black
          //    : sgsRedColor,
          ),
    );
  }
}
