import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/e/d/_data.dart' as data;

class const PortraitBlogText({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => FullTextSection(
    data.blogContent,
    actionButton: ActionButton(
      data.blogCta,
      onTap: () => context.go(Routes.blogPage),
    ),
  );
}
