// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/material.dart' show Colors;
import 'package:meta/meta.dart';

const referralTextColor = Colors.white;

const referralData0 = ReferralDataEntry(
  'Ina kann nicht nur Farbe. Sie schafft Atmosphäre!',
  'Kundenstimme: U. Mayer',
  200,
);

const referralData1 = ReferralDataEntry(
  'Die Räume sind im Einklang. Sie erzählen die Geschichte die wir erzählen wollten Die Atmosphäre unterstützt die historische Architektur, als auch das Wohlfühlambiente',
  'Kundenstimme: R. Götzenbrugger',
  360,
);

const referralData2 = ReferralDataEntry(
  'Die Zusammenarbeit war unkompliziert. Uns hat das direkte Feedback zur Ausgangssituation gefallen, sowie die korrekten Vorschläge zur Umsetzung. Du hast dir Zeit genommen herauszufinden, was uns wichtig ist, was uns gefällt und nach was wir suchen.',
  'Kundenstimme: E. Oestreicher',
  340,
);

@immutable
class ReferralDataEntry {
  const ReferralDataEntry(
    this.feedback,
    this.referral,
    this.maxTextWidth,
  );

  final String feedback;
  final String referral;
  final double maxTextWidth;
}
