import 'package:flutter/material.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/e/c/_data.dart' as data;

class PortraitPassionText extends StatelessWidget {
  const PortraitPassionText();

  @override
  Widget build(BuildContext context) => FullTextSection(
        title: '',
        text: data.passionContent,
        textColor: Colors.white,
        actionButton: ActionButton(
          data.passionCta,
          onTap: () {
            // TODO(albert): where to go?
          },
        ),
      );
}
