import 'package:raumunikate/_pages.dart';

abstract final class Routes {
  static const //
      homePage = HomePage.path,
      designPage = DesignPage.path,
      projectsPage = ProjectsPage.path,
      productsPage = ProductsPage.path,
      portraitPage = PortraitPage.path,
      blogPage = BlogPage.path;

  static const // Blog
      blogLilliGrewe = '$blogPage/${RaumfuerunikateLilliGrewe.path}',
      blogKerstinDiehl = '$blogPage/${RaumfuerunikateKerstinDiehl.path}';
}
