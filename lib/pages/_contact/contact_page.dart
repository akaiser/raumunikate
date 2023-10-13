import 'package:go_router/go_router.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_contact/_data.dart' as data;
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';

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
          child: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ContactForm(),
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

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _TextField(data.yourName),
          SizedBox(height: 12),
          _TextField(data.yourMail),
          SizedBox(height: 12),
          _TextField(data.yourMessage, minLines: 4, maxLines: 4),
          SizedBox(height: 12),
          ActionButton(data.send, onTap: null),
        ],
      );
}

class _TextField extends StatelessWidget {
  const _TextField(
    this.labelText, {
    this.minLines = 1,
    this.maxLines = 1,
  });

  final String labelText;
  final int minLines;
  final int maxLines;

  @override
  Widget build(BuildContext context) => TextFormField(
        cursorColor: raumGrau,
        style: context.dts.copyWith(color: raumGrau),
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: context.dts.copyWith(color: raumCreme),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: raumCreme),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: raumCreme),
          ),
        ),
      );
}
