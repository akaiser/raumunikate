import 'package:flutter/widgets.dart';
import 'package:raumunikate/_notifier.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/d/b/_data.dart' as data;

class const ProductsAboutText({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FullTextSection(
    data.content,
    title: data.title,
    title2: data.title2,
    actionButton: ActionButton(
      data.cta,
      onTap: () => context.scrollToBottomNotifier.notify(),
    ),
  );
}
