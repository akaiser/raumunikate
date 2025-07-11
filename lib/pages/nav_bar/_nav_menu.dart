import 'package:go_router/go_router.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart' as data;

const navMenuKey = Key('nav-menu');

class NavMenu extends StatelessWidget {
  const NavMenu();

  @override
  Widget build(BuildContext context) => PopupMenuButton<String>(
    key: navMenuKey,
    tooltip: '',
    iconSize: 32,
    surfaceTintColor: Colors.white,
    icon: Image.asset(Images.menu, color: raumGrau),
    itemBuilder: (context) => data.navData.map((entry) {
      final isEnabled = context.currentRoutePath != entry.pagePath;
      return PopupMenuItem<String>(
        enabled: isEnabled,
        onTap: () => context.go(entry.pagePath),
        value: entry.menuLinkText,
        child: _MenuItemText(entry.menuLinkText, isEnabled: isEnabled),
      );
    }).unmodifiable,
  );
}

class _MenuItemText extends StatelessWidget {
  const _MenuItemText(this.value, {required this.isEnabled});

  final String value;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) => Text(
    value,
    style: context.dts.copyWith(color: isEnabled ? raumCreme : raumGrau),
  );
}
