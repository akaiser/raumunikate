import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_footer/_data.dart' as data;
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class const CopyrightText({super.key}) extends Text {
  this : super(data.copyright);
}

class const ImprintTextLink({super.key}) extends TextLink {
  this : super(data.imprint, url: ImprintPage.path);
}

class const TermsTextLink({super.key}) extends TextLink {
  this : super(data.terms, url: TermsPage.path);
}

class const PrivacyTextLink({super.key}) extends TextLink {
  this : super(data.privacy, url: PrivacyPage.path);
}
