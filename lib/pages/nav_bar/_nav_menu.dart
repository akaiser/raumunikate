import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart' as data;

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) => PopupMenuButton<String>(
        tooltip: '',
        iconSize: 30,
        color: mainBackgroundColor,
        icon: const Placeholder(),
        // TODO(albert): mehh
        // SvgPicture.asset(
        //   Assets.menu,
        //   colorFilter: const ColorFilter.mode(
        //     mainTODO_0,
        //     BlendMode.srcIn,
        //   ),
        // )
        itemBuilder: (context) => data.navData.entries.map(
          (entry) {
            final isEnabled = context.currentRoutePath != entry.key;
            return PopupMenuItem<String>(
              enabled: isEnabled,
              onTap: () => context.go(entry.key),
              value: entry.value,
              child: _MenuItem(entry.value, isEnabled: isEnabled),
            );
          },
        ).unmodifiable,
      );
}

class _MenuItem extends StatelessWidget {
  const _MenuItem(this.value, {required this.isEnabled});

  final String value;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) => Text(
        value,
        style: context.tt.title?.copyWith(
          color: isEnabled ? mainTODO_1 : mainTODO_0,
          fontSize: 18,
        ),
      );
}
