import 'package:integration_test/integration_test.dart';

import 'navigation/navigation_test.dart' as navigation_test;
import 'pages/home_page_test.dart' as home_page_test;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  navigation_test.main();
  home_page_test.main();
}
