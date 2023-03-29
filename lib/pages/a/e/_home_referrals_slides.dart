import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class HomeReferralsSlides extends StatelessWidget {
  const HomeReferralsSlides({super.key});

  @override
  Widget build(BuildContext context) => const _Slides();
}

class _Slides extends StatelessWidget {
  const _Slides();

  @override
  Widget build(BuildContext context) => PageView(
        children: const [
          _HomeReferralCard(data.referralData0),
          _HomeReferralCard(data.referralData1),
          _HomeReferralCard(data.referralData2),
        ],
      );
}

class _HomeReferralCard extends StatelessWidget {
  const _HomeReferralCard(this.entry);

  final data.ReferralDataEntry entry;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 24,
          right: 40,
          bottom: 40,
        ),
        child: HomeReferralCard(entry),
      );
}
