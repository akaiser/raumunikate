import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/plan_page.dart';
import 'package:raumunikate/pages/c/projects_page.dart';
import 'package:raumunikate/pages/d/products_page.dart';
import 'package:raumunikate/pages/e/portrait_page.dart';
import 'package:raumunikate/pages/f/inspiration_page.dart';
import 'package:raumunikate/pages/g/blog_page.dart';

final navData = [
  NavDataEntry(Routes.homePage, HomePage, 'HOME'),
  NavDataEntry(Routes.planPage, PlanPage, 'ATMOSPHÄRE PLANEN'),
  NavDataEntry(Routes.planPage, ProjectsPage, 'PROJEKTE'),
  NavDataEntry(Routes.productsPage, ProductsPage, 'PRODUKTE'),
  NavDataEntry(Routes.portraitPage, PortraitPage, 'PORTRAIT'),
  NavDataEntry(Routes.inspirationPage, InspirationPage, 'INSPIRATION'),
  NavDataEntry(Routes.blogPage, BlogPage, 'BLOG'),
];

class NavDataEntry {
  NavDataEntry(
    this.pagePath,
    this.pageType,
    this.menuLinkText,
  );

  final String pagePath;
  final Type pageType;
  final String menuLinkText;
}
