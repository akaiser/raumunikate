import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;

class HomeReferralCard extends StatelessWidget {
  const HomeReferralCard(this.entry);

  final data.ReferralDataEntry entry;

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topLeft,
          image: AssetImage(Images.chevron),
          scale: 1.7,
        ),
      ),
      child: Padding(
        padding: isSxsBreakpoint
            ? const EdgeInsets.only(left: 24, top: 54)
            : const EdgeInsets.only(left: 56, top: 54),
        child: _ReferralCard(entry),
      ),
    );
  }
}

class _ReferralCard extends StatelessWidget {
  const _ReferralCard(this.entry);

  final data.ReferralDataEntry entry;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.dts;
    return SizedBox(
      width: entry.maxTextWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(entry.feedback, style: textStyle.copyWith(fontSize: 20)),
          const Gap(8),
          Text(
            entry.referral,
            style: textStyle.copyWith(color: data.referralTextColor),
          ),
        ],
      ),
    );
  }
}
