import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/social_links.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/nav_bar/_logo.dart';
import 'package:raumunikate/pages/nav_bar/_nav_menu.dart';

const _bigPadding = EdgeInsets.only(left: 100, top: 10, right: 100);
const _smallPadding = EdgeInsets.only(left: 10, top: 10, right: 10);

class NavBar extends StatelessWidget {
  const NavBar();

  @override
  Widget build(BuildContext context) {
    final isFullWidthNavBar = context.isFullWidthNavBar;
    return Consumer<NavBarNotifier>(
      builder: (context, notifier, navMenu) {
        final isExpanded = notifier.isExpanded;
        final navMenuOnly = !isFullWidthNavBar && !isExpanded;
        return AnimatedContainer(
          duration: const Duration(milliseconds: navBarTransitionInMillis),
          curve: Curves.ease,
          padding: isFullWidthNavBar ? _bigPadding : _smallPadding,
          height:
              isExpanded ? navigationBarHeightExpanded : navigationBarHeight,
          decoration: navMenuOnly
              ? null
              : const BoxDecoration(
                  color: mainBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                    ),
                  ],
                ),
          child: navMenuOnly
              ? navMenu
              : _NavBar(
                  navMenu ?? const SizedBox(),
                  isExpanded: isExpanded,
                  isFullWidthNavBar: isFullWidthNavBar,
                ),
        );
      },
      child: const Align(alignment: Alignment.topLeft, child: NavMenu()),
    );
  }
}

class _NavBar extends StatelessWidget {
  const _NavBar(
    this.navMenu, {
    required this.isExpanded,
    required this.isFullWidthNavBar,
  });

  final Widget navMenu;
  final bool isExpanded;
  final bool isFullWidthNavBar;

  @override
  Widget build(BuildContext context) => Table(
        columnWidths: const {
          0: FlexColumnWidth(),
          1: FlexColumnWidth(3),
          2: FlexColumnWidth(),
        },
        children: [
          TableRow(
            children: [
              navMenu,
              GestureDetector(
                onTap: context.currentRoutePath != Routes.homePage
                    ? () => context.go(Routes.homePage)
                    : null,
                child: Column(
                  children: [
                    const Gap(6),
                    const Logo(),
                    if (isExpanded) ...[
                      const Gap(20),
                      const LogoText(),
                    ],
                  ],
                ),
              ),
              if (isFullWidthNavBar)
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: SocialLinksRow(),
                )
              else
                const SizedBox(),
            ],
          ),
        ],
      );
}
