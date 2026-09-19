import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class const HomeReferralsSingle({super.key}) extends Padding {
  this
    : super(
        padding: const .all(navigationBarHeight),
        child: const Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                HomeReferralCard(data.referralData0),
                HomeReferralCard(data.referralData1),
              ],
            ),
            HomeReferralCard(data.referralData2),
          ],
        ),
      );
}
