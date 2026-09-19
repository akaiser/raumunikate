import 'package:raumunikate/_pages.dart';

abstract final class const Routes() {
  static const String homePage = HomePage.path,
      designPage = DesignPage.path,
      projectsPage = ProjectsPage.path,
      productsPage = ProductsPage.path,
      portraitPage = PortraitPage.path,
      blogPage = BlogPage.path,
      contactPage = ContactPage.path;

  // Blog
  static const blogLilliGrewe = '$blogPage/${RaumfuerunikateLilliGrewe.path}',
      blogKerstinDiehl = '$blogPage/${RaumfuerunikateKerstinDiehl.path}';
}
