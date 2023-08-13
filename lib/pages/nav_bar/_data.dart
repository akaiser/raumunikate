import 'package:meta/meta.dart';
import 'package:raumunikate/_pages.dart';
import 'package:raumunikate/_routes.dart';

const navData = [
  NavDataEntry(Routes.homePage, HomePage, 'HOME'),
  NavDataEntry(Routes.designPage, DesignPage, 'ATMOSPHÄRE GESTALTEN'),
  NavDataEntry(Routes.projectsPage, ProjectsPage, 'PROJEKTE'),
  NavDataEntry(Routes.productsPage, ProductsPage, 'PRODUKTE'),
  NavDataEntry(Routes.portraitPage, PortraitPage, 'PORTRAIT'),
  NavDataEntry(Routes.blogPage, BlogPage, 'BLOG'),
];

@immutable
class NavDataEntry {
  const NavDataEntry(
    this.pagePath,
    this.pageType,
    this.menuLinkText,
  );

  final String pagePath;
  final Type pageType;
  final String menuLinkText;
}
