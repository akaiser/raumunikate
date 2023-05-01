// ignore_for_file: avoid_multiple_declarations_per_line
import 'package:raumunikate/_pages.dart';

class Routes {
  const Routes._();

  static const //
      homePage = HomePage.path,
      planPage = PlanPage.path,
      projectsPage = ProjectsPage.path,
      productsPage = ProductsPage.path,
      portraitPage = PortraitPage.path,
      inspirationPage = InspirationPage.path,
      blogPage = BlogPage.path,
      blogViewPage = BlogViewPage.path;

  static const // Blog
      _blogViewPagePrefix = '$blogPage/$blogViewPage',
      blogLilliGrewe = '$_blogViewPagePrefix/raumfuerunikate-lilli-grewe';
}
