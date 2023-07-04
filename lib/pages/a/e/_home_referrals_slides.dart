import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class HomeReferralsSlides extends StatelessWidget {
  const HomeReferralsSlides();

  @override
  Widget build(BuildContext context) => PageView(
        scrollBehavior: context.defaultScrollBehavior,
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
