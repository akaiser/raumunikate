import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/a/e/_data.dart' as data;

class const HomeReferralCard(final data.ReferralDataEntry _entry, {super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: .topLeft,
          image: AssetImage(Images.chevron),
          scale: 1.7,
        ),
      ),
      child: Padding(
        padding: isSxsBreakpoint
            ? const .only(left: 24, top: 54)
            : const .only(left: 56, top: 54),
        child: _ReferralCard(_entry),
      ),
    );
  }
}

class const _ReferralCard(final data.ReferralDataEntry _entry)
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = context.dts;
    return SizedBox(
      width: _entry.maxTextWidth,
      child: Column(
        crossAxisAlignment: .start,
        mainAxisAlignment: .center,
        children: [
          Text(_entry.feedback, style: textStyle.copyWith(fontSize: 20)),
          const Gap(8),
          Text(
            _entry.referral,
            style: textStyle.copyWith(color: data.referralTextColor),
          ),
        ],
      ),
    );
  }
}
