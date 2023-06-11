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
      blogPage = BlogPage.path;

  static const // Blog
      blogLilliGrewe = '$blogPage/${RaumfuerunikateLilliGrewe.path}';
}
