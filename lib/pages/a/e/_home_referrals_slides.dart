import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;
import 'package:raumunikate/pages/a/e/_home_referral_card.dart';

class const HomeReferralsSlides({super.key}) extends StatelessWidget {
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

class const _HomeReferralCard(final data.ReferralDataEntry _entry)
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const .only(top: 80, left: 24, right: 40, bottom: 40),
    child: HomeReferralCard(_entry),
  );
}
