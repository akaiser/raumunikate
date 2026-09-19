import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:raumunikate/_environment.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_contact/_data.dart' as data;
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/action_button.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';

final _emailRegExp = RegExp(
  r'^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$',
);

class const ContactForm({super.key}) extends StatefulWidget {
  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  var _name = '';
  var _email = '';
  var _message = '';

  var _accepted = false;
  var _sending = false;
  var _sent = false;
  var _error = false;

  void _onNameChanged(String value) {
    final trimmed = value.trim();
    if (trimmed != _name) {
      setState(() => _name = trimmed);
    }
  }

  void _onEmailChanged(String value) {
    final trimmed = value.trim();
    if (trimmed != _email) {
      setState(() => _email = trimmed);
    }
  }

  void _onMessageChanged(String value) {
    final trimmed = value.trim();
    if (trimmed != _message) {
      setState(() => _message = trimmed);
    }
  }

  void _onAcceptedChanged(bool? value) {
    if (value != null && value != _accepted) {
      setState(() => _accepted = value);
    }
  }

  bool get _isValid =>
      _accepted &&
      _name.isNotEmpty &&
      _email.isNotEmpty &&
      _emailRegExp.hasMatch(_email) &&
      _message.isNotEmpty;

  Future<void> _send() async {
    setState(() => _sending = true);

    if ((await _post()).statusCode != 201) {
      _error = true;
    } else {
      _sent = true;
    }

    _sending = false;
    setState(() {});
  }

  Future<http.Response> _post() => http.post(
    Uri.https('localhost', Environment.contactPath),
    encoding: Encoding.getByName('utf-8'),
    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    body: {'name': _name, 'email': _email, 'message': _message},
  );

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .end,
    spacing: 12,
    children: [
      ResponsiveLayout(
        m: (context) => Row(
          spacing: 12,
          children: [
            Expanded(
              child: _TextField(data.yourName, onChanged: _onNameChanged),
            ),
            Expanded(
              child: _TextField(data.yourMail, onChanged: _onEmailChanged),
            ),
          ],
        ),
        xs: (context) => Column(
          spacing: 12,
          children: [
            _TextField(data.yourName, onChanged: _onNameChanged),
            _TextField(data.yourMail, onChanged: _onEmailChanged),
          ],
        ),
      ),
      _TextField(
        data.yourMessage,
        minLines: 4,
        maxLines: 4,
        onChanged: _onMessageChanged,
      ),
      Row(
        crossAxisAlignment: .start,
        children: [
          Checkbox(
            value: _accepted,
            splashRadius: 0,
            activeColor: raumCreme,
            side: const BorderSide(width: 2, color: raumCreme),
            onChanged: _onAcceptedChanged,
          ),
          Expanded(
            child: DefaultTextStyle(
              style: context.dts.copyWith(fontSize: 14),
              child: const RichTextSection(
                children: [
                  InlineText(data.legal0),
                  InlineText(data.legal1, link: PrivacyPage.path),
                  InlineText(data.legal2),
                ],
              ),
            ),
          ),
        ],
      ),
      ActionButton(
        _sending
            ? data.sending
            : _sent
            ? data.sent
            : _error
            ? data.error
            : data.send,
        onTap: !_isValid || _sent || _sending || _error ? null : _send,
      ),
    ],
  );
}

class const _TextField(
  final String _labelText, {
  required final ValueChanged<String> _onChanged,
  final int _minLines = 1,
  final int _maxLines = 1,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TextFormField(
    cursorColor: raumGrau,
    style: context.dts.copyWith(color: raumGrau),
    onChanged: _onChanged,
    minLines: _minLines,
    maxLines: _maxLines,
    decoration: InputDecoration(
      labelText: _labelText,
      labelStyle: context.dts.copyWith(color: raumCreme),
      focusedBorder: OutlineInputBorder(
        borderRadius: .circular(8),
        borderSide: const BorderSide(color: raumCreme),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: .circular(8),
        borderSide: const BorderSide(color: raumCreme),
      ),
    ),
  );
}
