import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/about_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) => Consumer<NavBarNotifier>(
        builder: (context, notifier, child) => AnimatedContainer(
          curve: Curves.ease,
          color: mainBackgroundColor,
          alignment: Alignment.center,
          duration: const Duration(milliseconds: transitionsDurationInMillis),
          height: notifier.isExpanded
              ? navigationBarHeight
              : navigationBarHeightExpanded,
          child: child,
        ),
        child: Table(
          children: [
            TableRow(
              children: [
                Row(
                  children: const [
                    _ClickableItem(HomePage.path, child: Text('Home')),
                    SizedBox(width: 8),
                    _ClickableItem(AboutPage.path, child: Text('About')),
                  ],
                ),
                const Text('Center', textAlign: TextAlign.center),
                const Text('Right', textAlign: TextAlign.right),
              ],
            ),
          ],
        ),
      );
}

class _ClickableItem extends StatelessWidget {
  const _ClickableItem(this.path, {required this.child});

  final String path;
  final Widget child;

  @override
  Widget build(BuildContext context) => path == context.currentRoutePath
      ? child
      : InkWell(
          onTap: () => context.go(path),
          child: MouseRegion(child: child),
        );
}
