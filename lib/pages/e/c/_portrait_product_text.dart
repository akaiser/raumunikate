import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/e/c/_data.dart' as data;

class PortraitProductText extends StatelessWidget {
  const PortraitProductText();

  @override
  Widget build(BuildContext context) => FullTextSection(
    text: data.productContent,
    textColor: Colors.white,
    actionButton: ActionButton(
      data.productCta,
      onTap: () => context.go(Routes.productsPage),
    ),
  );
}
