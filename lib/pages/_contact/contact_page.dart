import 'package:go_router/go_router.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_contact/_data.dart' as data;
import 'package:raumunikate/pages/_contact/contact_form.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

// TODO(albert): write UI tests...
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  static const path = '/kontakt';

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: const _BackButton(),
      title: Text(
        data.title,
        style: context.tt.body?.copyWith(
          color: mainBackgroundColor,
          fontSize: 20,
        ),
      ),
      shadowColor: Colors.transparent,
      backgroundColor: raumCreme,
    ),
    body: DefaultTextStyle.merge(
      style: context.tt.body?.copyWith(color: raumGrau),
      child: ScrollConfiguration(
        behavior: context.defaultScrollBehavior,
        child: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ContactForm(),
        ),
      ),
    ),
  );
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) => IconButton(
    onPressed: () => context.pop(),
    iconSize: 42,
    icon: Image.asset(Images.arrowLeft),
  );
}
