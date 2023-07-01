import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/a/b/_data.dart' as data;

class HomeWelcomeText extends StatelessWidget {
  const HomeWelcomeText();

  @override
  Widget build(BuildContext context) => FullTextSection(
        title: data.welcomeTitle,
        title2: data.welcomeTitle2,
        text: data.welcomeContent,
        actionButton: ActionButton(
          data.welcomeCta,
          onTap: () {
            // TODO(albert): where to go?
          },
        ),
      );
}