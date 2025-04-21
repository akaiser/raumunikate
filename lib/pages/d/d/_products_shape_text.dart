import 'package:flutter/widgets.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/d/d/_data.dart' as data;

class ProductsShapeText extends StatelessWidget {
  const ProductsShapeText();

  @override
  Widget build(BuildContext context) => FullTextSection(
    title: data.title,
    text: data.content,
    actionButton: ActionButton(
      data.cta,
      onTap: () => context.scrollToBottomNotifier.notify(),
    ),
  );
}
