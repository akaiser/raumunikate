import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/nav_bar/_nav_menu.dart';
import 'package:raumunikate/pages/nav_bar/_social_links.dart';

bool _isFullWidthNavBar(double screenWidth) =>
    resolveBreakpoint(screenWidth) != Breakpoint.small;

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isFullWidthNavBar = _isFullWidthNavBar(context.screenWidth);
    return Consumer<NavBarNotifier>(
      builder: (context, notifier, child) => AnimatedContainer(
        curve: Curves.ease,
        color: mainBackgroundColor,
        padding: EdgeInsets.only(
          left: isFullWidthNavBar ? 100 : 6,
          top: 6,
          right: isFullWidthNavBar ? 90 : 16,
        ),
        duration: const Duration(milliseconds: transitionsDurationInMillis),
        height: notifier.isExpanded
            ? navigationBarHeight
            : navigationBarHeightExpanded,
        child: child,
      ),
      child: const _NavBar(),
    );
  }
}

class _NavBar extends StatelessWidget {
  const _NavBar();

  @override
  Widget build(BuildContext context) => Table(
        children: [
          TableRow(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: NavMenu(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SvgPicture.asset(
                  'assets/logo.svg',
                  height: 30,
                  colorFilter: const ColorFilter.mode(
                    mainTODO_0,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: SocialLinks(),
              ),
            ],
          ),
        ],
      );
}
