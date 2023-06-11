import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_data.dart' as data;
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class Copyright extends Text {
  const Copyright() : super(data.copyright);
}

class Imprint extends TextLink {
  const Imprint() : super(data.imprint, url: ImprintPage.path);
}

class Terms extends TextLink {
  const Terms() : super(data.terms, url: TermsPage.path);
}

class Privacy extends TextLink {
  const Privacy() : super(data.privacy, url: PrivacyPage.path);
}
