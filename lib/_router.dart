import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
// import 'package:raumunikate/pages/_not_found_page.dart';
// import 'package:raumunikate/pages/a/home_page.dart';
// import 'package:raumunikate/pages/b/plan_page.dart';
// import 'package:raumunikate/pages/c/projects_page.dart';
// import 'package:raumunikate/pages/d/products_page.dart';
// import 'package:raumunikate/pages/e/portrait_page.dart';
// import 'package:raumunikate/pages/f/inspiration_page.dart';
// import 'package:raumunikate/pages/g/blog_page.dart';
import 'package:raumunikate/pages/g/blog_view_page.dart';

final router = GoRouter(
  // TODO(albert): revert!
  initialLocation: Routes.blogLilliGrewe,
  errorPageBuilder: (_, state) => _page(
    state,
    const BlogViewPage('raumfuerunikate-lilli-grewe'),
  ),
  routes: [
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
  ],
  //initialLocation: Routes.homePage,
  //errorPageBuilder: (_, state) => _page(state, const NotFoundPage()),
  // routes: [
  //   GoRoute(
  //     path: Routes.homePage,
  //     pageBuilder: (_, state) => _page(state, const HomePage()),
  //   ),
  //   GoRoute(
  //     path: Routes.planPage,
  //     pageBuilder: (_, state) => _page(state, const PlanPage()),
  //   ),
  //   GoRoute(
  //     path: Routes.projectsPage,
  //     pageBuilder: (_, state) => _page(state, const ProjectsPage()),
  //   ),
  //   GoRoute(
  //     path: Routes.productsPage,
  //     pageBuilder: (_, state) => _page(state, const ProductsPage()),
  //   ),
  //   GoRoute(
  //     path: Routes.portraitPage,
  //     pageBuilder: (_, state) => _page(state, const PortraitPage()),
  //   ),
  //   GoRoute(
  //     path: Routes.inspirationPage,
  //     pageBuilder: (_, state) => _page(state, const InspirationPage()),
  //   ),
  //   GoRoute(
  //     path: Routes.blogPage,
  //     pageBuilder: (_, state) => _page(state, const BlogPage()),
  //     routes: [
  //       GoRoute(
  //         path: '${Routes.blogViewPage}/:permalink',
  //         pageBuilder: (_, state) {
  //           final permalink = state.params['permalink'];
  //           return _page(
  //             state,
  //             permalink != null
  //                 ? BlogViewPage(permalink)
  //                 // ODO(albert): make a BlogViewNotFoundPage here
  //                 // OR: make the NotFoundPage accept custom messaging
  //                 // ALSO: the "permalink" needs to be validated
  //                 // against available permalinks!
  //                 : const NotFoundPage(),
  //           );
  //         },
  //       ),
  //     ],
  //   ),
  //   GoRoute(
  //     path: ImprintPage.path,
  //     pageBuilder: (_, state) => _page(state, const ImprintPage()),
  //   ),
  //   GoRoute(
  //     path: TermsPage.path,
  //     pageBuilder: (_, state) => _page(state, const TermsPage()),
  //   ),
  //   GoRoute(
  //     path: PrivacyPage.path,
  //     pageBuilder: (_, state) => _page(state, const PrivacyPage()),
  //   ),
  // ],
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
