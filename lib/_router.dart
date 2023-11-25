import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_pages.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';

const _pathParamPermalink = 'permalink';

typedef PageBuilder = Widget Function(GoRouterState state);

final router = GoRouter(
  initialLocation: Routes.homePage,
  errorPageBuilder: (_, state) => _page(state, const NotFoundPage()),
  routes: [
    _goRoute(Routes.homePage, (_) => const HomePage()),
    _goRoute(Routes.designPage, (_) => const DesignPage()),
    _goRoute(Routes.projectsPage, (_) => const ProjectsPage()),
    _goRoute(Routes.productsPage, (_) => const ProductsPage()),
    _goRoute(Routes.portraitPage, (_) => const PortraitPage()),
    _goRoute(Routes.blogPage, (_) => const BlogPage(), [
      // TODO(albert): add redirect for "/v/raumfuerunikate-lilli-grewe"
      // either here on on server
      _goRoute(':$_pathParamPermalink', (state) => state.toBlogViewPage),
    ]),
    _goRoute(ImprintPage.path, (_) => const ImprintPage()),
    _goRoute(TermsPage.path, (_) => const TermsPage()),
    _goRoute(PrivacyPage.path, (_) => const PrivacyPage()),
    _goRoute(ContactPage.path, (_) => const ContactPage()),
  ],
);

GoRoute _goRoute(
  String path,
  PageBuilder builder, [
  List<GoRoute> routes = const [],
]) =>
    GoRoute(
      path: path,
      pageBuilder: (_, state) => _page(state, builder(state)),
      routes: routes,
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
