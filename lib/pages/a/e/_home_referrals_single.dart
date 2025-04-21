import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class HomeReferralsSingle extends Padding {
  const HomeReferralsSingle()
    : super(
        padding: const EdgeInsets.all(navigationBarHeight),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
