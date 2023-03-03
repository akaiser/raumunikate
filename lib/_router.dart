import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/plan_page.dart';
import 'package:raumunikate/pages/c/projects_page.dart';
import 'package:raumunikate/pages/d/products_page.dart';
import 'package:raumunikate/pages/e/portrait_page.dart';
import 'package:raumunikate/pages/f/inspiration_page.dart';

final router = GoRouter(
  initialLocation: HomePage.path,
  routes: [
    GoRoute(
      path: HomePage.path,
      pageBuilder: (_, state) => _page(state, const HomePage()),
    ),
    GoRoute(
      path: PlanPage.path,
      pageBuilder: (_, state) => _page(state, const PlanPage()),
    ),
    GoRoute(
      path: ProjectsPage.path,
      pageBuilder: (_, state) => _page(state, const ProjectsPage()),
    ),
    GoRoute(
      path: ProductsPage.path,
      pageBuilder: (_, state) => _page(state, const ProductsPage()),
    ),
    GoRoute(
      path: PortraitPage.path,
      pageBuilder: (_, state) => _page(state, const PortraitPage()),
    ),
    GoRoute(
      path: InspirationPage.path,
      pageBuilder: (_, state) => _page(state, const InspirationPage()),
    ),
  ],
);

CustomTransitionPage<Widget> _page(
  GoRouterState state,
  Widget page,
) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionDuration: const Duration(milliseconds: pageTransitionInMillis),
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: CurveTween(curve: Curves.ease).animate(animation),
        child: child,
      ),
    );
