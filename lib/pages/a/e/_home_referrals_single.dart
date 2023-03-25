import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class HomeReferralsSingle extends StatelessWidget {
  const HomeReferralsSingle({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(navigationBarHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                HomeReferralCard(data.referralData0),
                HomeReferralCard(data.referralData1),
              ],
            ),
            const HomeReferralCard(data.referralData2),
          ],
        ),
      );
}
