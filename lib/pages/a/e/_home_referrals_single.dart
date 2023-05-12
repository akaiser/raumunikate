import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class HomeReferralsSingle extends StatelessWidget {
  const HomeReferralsSingle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.all(navigationBarHeight),
        child: Column(
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
