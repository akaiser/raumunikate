import 'package:go_router/go_router.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_footer/_bottom_section.dart';
import 'package:raumunikate/pages/_footer/_connect_column.dart';
import 'package:raumunikate/pages/_footer/_contact_column.dart';
import 'package:raumunikate/pages/_footer/_data.dart' as data;
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) => DefaultTextStyle(
        style: context.dts.copyWith(fontSize: 13),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ConnectColumn(),
            _ContactPageButton(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                ContactColumn(),
                SizedBox(height: 16),
                BottomSection(),
                SizedBox(height: 16),
              ],
            ),
          ],
        ),
      );
}

class _ContactPageButton extends StatelessWidget {
  const _ContactPageButton();

  @override
  Widget build(BuildContext context) => ActionButton(
        data.contactButton,
        onTap: () => context.push(Routes.contactPage),
      );
}
