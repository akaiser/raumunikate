import 'package:integration_test/integration_test.dart';

import 'navigation/navigation_test.dart' as navigation_test;
import 'pages/blog_page_test.dart' as blog_page_test;
import 'pages/home_page_test.dart' as home_page_test;
import 'pages/inspiration_page_test.dart' as inspiration_page_test;
import 'pages/plan_page_test.dart' as plan_page_test;
import 'pages/portrait_page_test.dart' as portrait_page_test;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  navigation_test.main();
  home_page_test.main();
  plan_page_test.main();
  portrait_page_test.main();
  inspiration_page_test.main();
  blog_page_test.main();
}
