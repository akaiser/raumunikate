import 'package:integration_test/integration_test.dart';

import 'pages/home_page_test.dart' as home_page_test;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  home_page_test.main();
}
