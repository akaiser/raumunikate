import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/a/b/_data.dart' as data;

class HomeWelcomeInfo extends StatelessWidget {
  const HomeWelcomeInfo({super.key});

  @override
  Widget build(BuildContext context) => FullTextSection(
        title: data.introTitle,
        title2: data.introTitle2,
        text: data.introContent,
        actionButton: ActionButton(
          data.introCta,
          onTap: () {
            // TODO(albert): where to go?
          },
        ),
      );
}
