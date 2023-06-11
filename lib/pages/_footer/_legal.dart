import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_data.dart' as data;
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class CopyrightText extends Text {
  const CopyrightText() : super(data.copyright);
}

class ImprintTextLink extends TextLink {
  const ImprintTextLink() : super(data.imprint, url: ImprintPage.path);
}

class TermsTextLink extends TextLink {
  const TermsTextLink() : super(data.terms, url: TermsPage.path);
}

class PrivacyTextLink extends TextLink {
  const PrivacyTextLink() : super(data.privacy, url: PrivacyPage.path);
}
