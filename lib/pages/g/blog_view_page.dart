// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class BlogViewPage extends StatelessWidget {
  const BlogViewPage(
    this.permalink, {
    super.key,
  });

  static const path = 'v';

  // TODO(albert): use me!
  final String permalink;

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
        children: [
          SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: _Text('20.02.2023'),
          ),
          HeadlineText('#raumfuerunikate'),
          SizedBox(height: 16),
          _Text(
            'Herzlich Willkommen im Zuhause der Atmosphäre. Es ist an der Zeit zu entdecken, wie Interiorbegeisterte ihr Wohlfühlzuhause authentisch und mit dem gewissen Gespür für Ästhetik einrichten.',
          ),
          SizedBox(height: 16),
          RichTextSection(
            children: [
              InlineText('Mein erster Gast dieser Interviewreihe '),
              InlineText(
                '#raumfuerunikate',
                link: 'https://www.instagram.com/explore/tags/raumfuerunikate/',
              ),
              InlineText(' ist die zauberhafte Lilli, die die '),
              InlineText(
                '#instagraminteriorchallenge',
                link:
                    'https://www.instagram.com/explore/tags/instagraminteriorchallenge/',
              ),
              InlineText(
                ' ins Leben gerufen hat. Vor zwei Jahren habe ich an dieser Challenge mitgemacht und interessante Accounts entdeckt. Sie ist mir sehr positiv im Gedächtnis geblieben.',
              ),
            ],
          ),
          SizedBox(height: 16),
          _Text(
            'Liebe Lilli, Dein Zuhause inspiriert mich. Du hast ein sehr gutes Raumgefühl und verstehst es wunderbar Produkte in Akzentfarben zu kombinieren und alles mit einem gewissen Charme von Frohsinn. Auf Deinem Instagramkanal habe ich einige Karussellposts entdeckt, die die Entwicklung eurer Einrichtung zeigen. Es ist so schön zu sehen, dass sich das Zuhause mit uns weiterentwickeln darf.',
          ),
          SizedBox(height: 32),
          _ImageRow([Assets.lilli, Assets.kitchen, Assets.sleep]),
          _Caption('Bitte erzähle uns über Dich und Dein Zuhause.'),
          _Text(
            'Ich bin Lilli, 39 Jahre alt und arbeite bei einem der letzten familiengeführten Möbelunternehmen in Deutschland. Ich denke gerne kreativ und mag es grenzen übergreifende Strategien zu entwickeln. Wir, das sind mein Mann, unsere beiden Töchter und ich, leben in Bielefeld in einem historischem Gewerbepark in einem Loft auf 100 Quadratmetern. Es ist alles offen, bis auf das Zimmer unserer ältesten Tochter. Wir lieben die Höhe in der Mitte des Raums, die für viel „Freiheit“ sorgt. Es gibt aber auch auf der ganzen Raumlänge auf beiden Seiten Dachschrägen, die dem Raum kuschelige Gemütlichkeit verleihen. Lange (10 Jahre) haben wir davon geträumt so zu wohnen und sind jetzt mega happy.',
          ),
          _Caption(
            'Welche Aspekte verleihen Deinem Zuhause Wohlfühlatmosphäre?',
          ),
          _Text(
            'Für uns bedeutet Wohlfühlatmosphäre Luft zum Atmen, daher ist die Raummitte frei, um mit Leben bespielt zu werden. Wir haben wenig Möbel – die alle funktional und mit viel Liebe ausgewählt sind - aber einige schöne, farbenfrohe Wohnaccessoires und Objekte, die unser Zuhause „besonders“ machen. Ich mag es, wenn man sieht, wer darin wohnt.',
          ),
          _Caption('Wie gehst Du an Raumgestaltung heran?'),
          _Text(
            'Ich richte selten Räume ein. In unserem Loft wohnen wir jetzt schon fast 10 Jahre und hier hat sich in der groben Struktur wenig getan. Am Anfang haben wir den Raum nach unseren Bedürfnissen und Needs in Bereiche geordnet und geschaut welche Möbel wir wo platzieren um den Bereichen einen Rahmen zu geben, die Leichtigkeit und Offenheit des Raums aber nicht kaputt zu machen. Ein Bad, eine Küche, ein Esstisch mit Stühlen, Bett und Schrank, ein niedriges Regal passend zu unserer Architektur. Es gibt bei uns wenig Möglichkeiten Möbel zu verrücken oder Bereiche zu tauschen. Ich glaube wir haben für unsere Wohnsituation mit den Anforderungen von vier Personen die beste Lösung gefunden.',
          ),
          _Caption('Was darf in einem Raum für Dich nicht fehlen?'),
          _Text(
            'Die persönliche Note. Ich mag es, wenn ein Zuhause individuell ist, wächst und sich verändert und Geschichten über die Bewohner erzählt. Es muss niemandem gefallen, außer den Menschen, die darin zuhause sind. Ich persönlich mag Farbe sehr. Die bringt Fröhlichkeit in jeden Raum und tut meinem Wohlbefinden gut.',
          ),
          SizedBox(height: 32),
          _ImageRow([Assets.child, Assets.eat, Assets.sleep2]),
          _Caption('Welche Rolle spielt Raumfarbe für Dich?'),
          _Text(
            'Wie eben schon erwähnt: Ich liebe Farbe! Aaaaaber unser Boden ist lichtgrau und unsere Wände sind fast überall weiß. Die einzige farbige Wand, findet man bei uns im Bad. Die weißen Wände und der lichtgraue Holzboden bieten aber unseren farbenfrohen Dekoaccessoires, Designobjekten und der Kunst an der Wand die perfekte Bühne. So können unsere besonderen Stücke mehr Aufmerksamkeit auf sich ziehen. Außerdem wird durch die Farb-Unterbrechung ein harmonisches Gleichgewicht zwischen Ruhe und Spannung gehalten.',
          ),
          _Caption(
            'Du wohnst nicht allein. Wie bekommst Du alle Wünsche unter einen Hut?',
          ),
          _Text(
            'Jeder darf seine Wünsche äußern. Damit es am Ende nicht zu wild wird – bei uns sind ja (fast) alle Bereiche auf einen Blick einsehbar - geben wir unseren Töchtern gerne eine Auswahl vor und lenken so in die „richtige“ Richtung. Im Zimmer unserer Großen, hat sie natürlich den Hut auf und die Kleine darf sich in ihren Tiny-Kinderhaus ausleben. Die großen Einrichtungsentscheidungen liegen zu 50% bei meinem Mann Sascha und zu 50% bei mir. Wir können uns da gut die Bälle zuspielen und finden immer einen guten Kompromiss. Würde ich allein entscheiden, wäre es wahrscheinlich weicher, femininer - würde er alleine entscheiden wäre es artify, verrückter und vielleicht minimalistischer. So wie es ist, können wir beide sehr gut damit leben. :)',
          ),
          _Caption('Welches ist Dein Lieblingsstück und warum?'),
          _Text(
            'Ich habe ehrlich gesagt kein Lieblingsstück, ich hänge nicht an den Dingen. Wenn Sascha einen neuen Tisch baut, darf der alte gehen und in einer anderen Familie zum Lebensmittelpunkt werden, das ist ein schöner Fluss. Wir entwerfen gerne neue Dinge, probieren aus und lassen sie irgendwann weiterziehen. Generell mögen wir spannende Produkte feiner kleiner Labels und langlebige Produkte, auf die wir auch gerne sparen.',
          ),
          _Caption('Wo findest Du Inspiration?'),
          _Text(
            'Auf Instagram, Pinterest oder Designmessen. Aber auch gerne mal in Zeitschriften, vor allem wenn ich mal Ruhe habe ausgiebig zu blättern...',
          ),
          _Caption('Wer inspiriert Dich im Bereich Interior?'),
          _Text('Auf Instagram mag ich zum Beispiel folgende Accounts sehr:'),
          _Links(),
          _Caption(
            'Um nochmal den Bogen zum Anfang zu spannen, wie kam es zu Deiner Instagram Interior Challenge?',
          ),
          RichTextSection(
            children: [
              InlineText(
                '2012 habe ich eine Challenge auf Instagram entdeckt - ',
              ),
              InlineText(
                '#marchmeetthemaker',
                link:
                    'https://www.instagram.com/explore/tags/marchmeetthemaker/',
              ),
              InlineText(
                ' – bei der kleine Labels zu verschiedenen Themen ihr Unternehmen vorstellen konnten. Die Idee fand ich super und weil ich selbst sehr neugierig bin und gerne bei anderen durchs Fenster gucke und schaue wie sie wohnen – wollte ich das Konzept mit den Tages-Aufgaben für die Interiorszene adaptieren. Es haben direkt beim ersten Mal viele große Accounts mitgemacht und mittlerweile gab es schon 13 Ausgaben (immer im Frühjahr und im Herbst). Wenn ich das so sage, bin ich immer wieder erstaunt. Unglaublich, was daraus geworden ist. Seit einem Jahr gibt es auch einen eigenen Account für die Challenge - ',
              ),
              InlineText(
                '@iic__official',
                link: 'https://www.instagram.com/iic__official/',
              ),
              InlineText(' - und das Interesse ist nach wie vor da.'),
            ],
          ),
          _Caption('Wann startet die nächste?'),
          RichTextSection(
            children: [
              InlineText('Schon ganz bald! Die nächste '),
              InlineText(
                '#instagraminteriorchallenge',
                link:
                    'https://www.instagram.com/explore/tags/instagraminteriorchallenge/',
              ),
              InlineText(' startet im April 2023.'),
            ],
          ),
          SizedBox(height: 24),
          _Text(
            'Vielen Dank liebe Lilli für den spannenden Einblick in Dein Zuhause.\n\nBleib ein Unikat,\nIna',
          ),
          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 8),
          RichTextSection(
            children: [
              InlineText('Gästin: Lilli Grewe '),
              InlineText(
                '@kitschcanmakeyourich',
                link: 'https://www.instagram.com/kitschcanmakeyourich/',
              ),
            ],
          ),
          RichTextSection(
            children: [
              InlineText('Fotografie: Benjamin Janzen '),
              InlineText(
                '@bjfotografie',
                link: 'https://www.instagram.com/bjfotografie/',
              ),
            ],
          ),
          RichTextSection(
            children: [
              InlineText('Verfasst von: Ina Kaiser '),
              InlineText(
                '@raumunikate',
                link: 'https://www.instagram.com/raumunikate/',
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(),
        ],
      );
}

class _ImageRow extends StatelessWidget {
  const _ImageRow(this.assets);

  final List<String> assets;

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        m: (_) => Row(
          children: assets
              .map<Widget>((asset) => Expanded(child: Image.asset(asset)))
              .separate(const SizedBox(width: 24))
              .unmodifiable,
        ),
        xs: (_) => Column(
          children: assets
              .map<Widget>(Image.asset)
              .separate(const SizedBox(height: 24))
              .unmodifiable,
        ),
      );
}

class _Caption extends StatelessWidget {
  const _Caption(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 36, bottom: 8),
        child: Text(
          text,
          style: context.tt.label?.copyWith(
            color: mainTODO_0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

class _Text extends StatelessWidget {
  const _Text(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: context.tt.body?.copyWith(color: mainTODO_0),
      );
}

class _Links extends StatelessWidget {
  const _Links();

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TextLink(
            '@theobert_pot',
            url: 'https://www.instagram.com/theobert_pot/',
          ),
          TextLink(
            '@frau.kieselstein',
            url: 'https://www.instagram.com/frau.kieselstein/',
          ),
          TextLink(
            '@mehr.von.mia',
            url: 'https://www.instagram.com/mehr.von.mia/',
          ),
          TextLink(
            '@kersylovescolor',
            url: 'https://www.instagram.com/kersylovescolor/',
          ),
          TextLink(
            '@hoorayforthedetail',
            url: 'https://www.instagram.com/hoorayforthedetail/',
          ),
          TextLink(
            '@herrklar',
            url: 'https://www.instagram.com/herrklar/',
          ),
        ],
      );
}
