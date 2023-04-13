import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/plan_page.dart';
import 'package:raumunikate/pages/c/projects_page.dart';
import 'package:raumunikate/pages/d/products_page.dart';
import 'package:raumunikate/pages/e/portrait_page.dart';
import 'package:raumunikate/pages/f/inspiration_page.dart';
import 'package:raumunikate/pages/g/blog_page.dart';

final navData = [
  NavDataEntry(HomePage.path, HomePage, 'HOME'),
  NavDataEntry(PlanPage.path, PlanPage, 'ATMOSPHÄRE PLANEN'),
  NavDataEntry(ProjectsPage.path, ProjectsPage, 'PROJEKTE'),
  NavDataEntry(ProductsPage.path, ProductsPage, 'PRODUKTE'),
  NavDataEntry(PortraitPage.path, PortraitPage, 'PORTRAIT'),
  NavDataEntry(InspirationPage.path, InspirationPage, 'INSPIRATION'),
  NavDataEntry(BlogPage.path, BlogPage, 'BLOG'),
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
