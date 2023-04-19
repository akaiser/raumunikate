// ignore_for_file: avoid_multiple_declarations_per_line
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/b/plan_page.dart';
import 'package:raumunikate/pages/c/projects_page.dart';
import 'package:raumunikate/pages/d/products_page.dart';
import 'package:raumunikate/pages/e/portrait_page.dart';
import 'package:raumunikate/pages/f/inspiration_page.dart';
import 'package:raumunikate/pages/g/blog_page.dart';
import 'package:raumunikate/pages/g/blog_view_page.dart';

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
