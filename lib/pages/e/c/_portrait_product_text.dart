import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/e/c/_data.dart' as data;

class const PortraitProductText({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FullTextSection(
    data.productContent,
    textColor: Colors.white,
    actionButton: ActionButton(
      data.productCta,
      onTap: () => context.go(Routes.productsPage),
    ),
  );
}
