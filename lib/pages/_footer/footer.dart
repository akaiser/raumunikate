import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_contact/contact_form.dart';
import 'package:raumunikate/pages/_footer/_bottom_section.dart';
import 'package:raumunikate/pages/_footer/_connect_column.dart';
import 'package:raumunikate/pages/_footer/_contact_column.dart';
import 'package:raumunikate/pages/_footer/_data.dart' as data;
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
    style: context.dts.copyWith(fontSize: 13),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_TopSection(), _BottomSection()],
    ),
  );
}

class _TopSection extends StatelessWidget {
  const _TopSection();

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isXsBreakpoint;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ConnectColumn(),
        const Gap(28),
        if (isSxsBreakpoint)
          const _ContactPageLink()
        else
          Center(
            child: SizedBox(
              width: 800,
              child: DefaultTextStyle(
                style: context.dts.copyWith(fontSize: 16),
                child: const ContactForm(),
              ),
            ),
          ),
      ],
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection();

  @override
  Widget build(BuildContext context) => const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [Gap(16), ContactColumn(), Gap(16), BottomSection(), Gap(16)],
  );
}

class _ContactPageLink extends TextLink {
  const _ContactPageLink()
    : super(data.contactText, url: Routes.contactPage, doPush: true);
}
