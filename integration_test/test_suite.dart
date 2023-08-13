import 'package:integration_test/integration_test.dart';

import 'navigation/navigation_test.dart' as navigation_test;
import 'pages/blog_page_test.dart' as blog_page_test;
import 'pages/design_page_test.dart' as design_page_test;
import 'pages/home_page_test.dart' as home_page_test;
import 'pages/portrait_page_test.dart' as portrait_page_test;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  navigation_test.main();
  home_page_test.main();
  design_page_test.main();
  portrait_page_test.main();
  blog_page_test.main();
}
