import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';

class const SocialLinksRow({super.mainAxisAlignment = .end, super.key})
    extends Row {
  this
    : super(
        children: const [
          _Link(
            Images.instagram,
            url: 'https://www.instagram.com/raumunikate/',
          ),
          Gap(8),
          _Link(
            Images.facebook,
            url: 'https://de-de.facebook.com/ina.kaiser.7543/',
          ),
          Gap(8),
          _Link(Images.mail, url: 'mailto:kontakt@raumunikate.com'),
        ],
      );
}

class const _Link(final String _image, {required final String _url})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ClickableRegion(
    onTap: () => context.launch(_url),
    child: Image.asset(_image, height: 16, color: raumGrau),
  );
}
