import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_pages.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';

const _pathParamPermalink = 'permalink';

final router = GoRouter(
  initialLocation: Routes.homePage,
  errorPageBuilder: (_, state) => _page(state, const NotFoundPage()),
  routes: [
    GoRoute(
      path: Routes.homePage,
      pageBuilder: (_, state) => _page(state, const HomePage()),
    ),
    GoRoute(
      path: Routes.designPage,
      pageBuilder: (_, state) => _page(state, const DesignPage()),
    ),
    GoRoute(
      path: Routes.projectsPage,
      pageBuilder: (_, state) => _page(state, const ProjectsPage()),
    ),
    GoRoute(
      path: Routes.productsPage,
      pageBuilder: (_, state) => _page(state, const ProductsPage()),
    ),
    GoRoute(
      path: Routes.portraitPage,
      pageBuilder: (_, state) => _page(state, const PortraitPage()),
    ),
    GoRoute(
      path: Routes.blogPage,
      pageBuilder: (_, state) => _page(state, const BlogPage()),
      // TODO(albert): add redirect for "/v/raumfuerunikate-lilli-grewe"
      // either here on on server
      routes: [
        GoRoute(
          path: ':$_pathParamPermalink',
          pageBuilder: (_, state) => _page(state, state.toBlogViewPage),
        ),
      ],
    ),
    GoRoute(
      path: ImprintPage.path,
      pageBuilder: (_, state) => _page(state, const ImprintPage()),
    ),
    GoRoute(
      path: TermsPage.path,
      pageBuilder: (_, state) => _page(state, const TermsPage()),
    ),
    GoRoute(
      path: PrivacyPage.path,
      pageBuilder: (_, state) => _page(state, const PrivacyPage()),
    ),
    GoRoute(
      path: ContactPage.path,
      pageBuilder: (_, state) => _page(state, const ContactPage()),
    ),
  ],
);

CustomTransitionPage<Widget> _page(
  GoRouterState state,
  Widget page,
) =>
    CustomTransitionPage(
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: pageTransitionInMillis),
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: CurveTween(curve: Curves.ease).animate(animation),
        child: child,
      ),
      child: page,
    );

extension on GoRouterState {
  // TODO(albert): make a BlogViewNotFoundPage here
  // OR: make the NotFoundPage accept custom messaging
  Widget get toBlogViewPage => switch (pathParameters[_pathParamPermalink]) {
        RaumfuerunikateLilliGrewe.path => const RaumfuerunikateLilliGrewe(),
        RaumfuerunikateKerstinDiehl.path => const RaumfuerunikateKerstinDiehl(),
        _ => const NotFoundPage(),
      };
}
