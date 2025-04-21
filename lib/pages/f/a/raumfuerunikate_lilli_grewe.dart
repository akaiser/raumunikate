import 'package:flutter/material.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
import 'package:raumunikate/pages/f/_blog_images.dart';
import 'package:raumunikate/pages/f/_blog_texts.dart';
import 'package:raumunikate/pages/f/_data.dart';
import 'package:raumunikate/pages/f/a/_links_column.dart';

class RaumfuerunikateLilliGrewe extends StatelessWidget {
  const RaumfuerunikateLilliGrewe();

  static const path = blogPathLilliGrewe;

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
    children: [
      newLine,
      BlogHeader(blogName: blogNameLilliGrewe, blogDate: blogDateLilliGrewe),
      newLine,
      HeadlineText('#raumfuerunikate'),
      newLine,
      Text(
        '''
Herzlich Willkommen im Zuhause der Atmosphäre. Es ist an der Zeit zu entdecken, wie Interiorbegeisterte ihr Wohlfühlzuhause authentisch und mit dem gewissen Gespür für Ästhetik einrichten.''',
      ),
      newLine,
      RichTextSection(
        children: [
          InlineText('Mein erster Gast dieser Interviewreihe '),
          InlineTextRaumfuerunikate(),
          InlineText(' ist die zauberhafte Lilli, die die '),
          InlineTextInstagraminteriorchallenge(),
          InlineText(
            '''
 ins Leben gerufen hat. Vor zwei Jahren habe ich an dieser Challenge mitgemacht und interessante Accounts entdeckt. Sie ist mir sehr positiv im Gedächtnis geblieben.''',
          ),
        ],
      ),
      newLine,
      Text(
        '''
Liebe Lilli, Dein Zuhause inspiriert mich. Du hast ein sehr gutes Raumgefühl und verstehst es wunderbar Produkte in Akzentfarben zu kombinieren und alles mit einem gewissen Charme von Frohsinn. Auf Deinem Instagramkanal habe ich einige Karussellposts entdeckt, die die Entwicklung eurer Einrichtung zeigen. Es ist so schön zu sehen, dass sich das Zuhause mit uns weiterentwickeln darf.''',
      ),
      newLine,
      ResponsiveBlogImages([Images.lilli, Images.kitchen, Images.sleep]),
      newLine,
      BlogCaption('Bitte erzähle uns etwas über Dich und Dein Zuhause.'),
      smallNewLine,
      Text(
        '''
Ich bin Lilli, 39 Jahre alt und arbeite bei einem der letzten familiengeführten Möbelunternehmen in Deutschland. Ich denke gerne kreativ und mag es grenzenübergreifende Strategien zu entwickeln. Wir, das sind mein Mann, unsere beiden Töchter und ich, leben in Bielefeld in einem historischem Gewerbepark in einem Loft auf 100 Quadratmetern. Es ist alles offen, bis auf das Zimmer unserer großen Tochter. Wir lieben die Höhe in der Mitte des Raums, die für viel "Freiheit" sorgt. Es gibt aber auch auf der ganzen Raumlänge auf beiden Seiten Dachschrägen, die dem Raum kuschelige Gemütlichkeit verleihen. Lange (10 Jahre) haben wir davon geträumt so zu wohnen und sind jetzt mega happy.''',
      ),
      newLine,
      BlogCaption(
        'Welche Aspekte verleihen Deinem Zuhause Wohlfühlatmosphäre?',
      ),
      smallNewLine,
      Text(
        '''
Für uns bedeutet Wohlfühlatmosphäre Luft zum Atmen, daher ist die Raummitte frei, um mit Leben bespielt zu werden. Wir haben wenig Möbel – die alle funktional und mit viel Liebe ausgewählt sind - aber einige schöne, farbenfrohe Wohnaccessoires und Objekte, die unser Zuhause "besonders" machen. Ich mag es, wenn man sieht, wer darin wohnt.''',
      ),
      newLine,
      BlogCaption('Wie gehst Du an Raumgestaltung heran?'),
      smallNewLine,
      Text(
        '''
Ich richte selten Räume ein. In unserem Loft wohnen wir jetzt schon fast 10 Jahre und hier hat sich in der groben Struktur wenig getan. Am Anfang haben wir den Raum nach unseren Bedürfnissen und Needs in Bereiche geordnet und geschaut welche Möbel wir wo platzieren. Die Gliederung sollte einen Rahmen geben, aber die Leichtigkeit und Offenheit des Raums nicht kaputt zu machen. Ein Bad, eine Küche, ein Esstisch mit Stühlen, Bett und Schrank, ein niedriges Regal passend zu unserer Architektur. Es gibt bei uns wenig Möglichkeiten Möbel zu verrücken oder Bereiche zu tauschen. Ich glaube wir haben für unsere Wohnsituation mit den Anforderungen von vier Personen die beste Lösung gefunden.''',
      ),
      newLine,
      BlogCaption('Was darf in einem Raum für Dich nicht fehlen?'),
      smallNewLine,
      Text(
        '''
Die persönliche Note. Ich mag es, wenn ein Zuhause individuell ist, wächst, sich verändert und Geschichten über die Bewohner erzählt. Es muss niemandem gefallen, außer den Menschen, die darin zuhause sind. Ich persönlich mag Farbe sehr. Die bringt Fröhlichkeit in jeden Raum und tut meinem Wohlbefinden gut.''',
      ),
      newLine,
      ResponsiveBlogImages([Images.child, Images.eat, Images.sleep2]),
      newLine,
      BlogCaption('Welche Rolle spielt Raumfarbe für Dich?'),
      smallNewLine,
      Text(
        '''
Wie eben schon erwähnt: Ich liebe Farbe! Aaaaaber unser Boden ist lichtgrau und unsere Wände sind fast überall weiß. Die einzige farbige Wand, findet man bei uns im Bad. Die weißen Wände und der lichtgraue Holzboden bieten aber unseren farbenfrohen Dekoaccessoires, Designobjekten und der Kunst an der Wand die perfekte Bühne. So können besondere Stücke mehr Aufmerksamkeit auf sich ziehen. Außerdem wird durch die Farb-Unterbrechung ein harmonisches Gleichgewicht zwischen Ruhe und Spannung gehalten.''',
      ),
      newLine,
      BlogCaption('''
Du wohnst nicht allein. Wie bekommst Du alle Wünsche unter einen Hut?'''),
      smallNewLine,
      Text(
        '''
Jeder darf seine Wünsche äußern. Damit es am Ende nicht zu wild wird – bei uns sind ja (fast) alle Bereiche auf einen Blick einsehbar - geben wir unseren Töchtern gerne eine Auswahl vor und lenken so in die "richtige" Richtung. Im Zimmer unserer Großen, hat sie natürlich den Hut auf und die Kleine darf sich in ihren Tiny-Kinderhaus ausleben. Die großen Einrichtungsentscheidungen liegen zu 50% bei meinem Mann Sascha und zu 50% bei mir. Wir können uns da gut die Bälle zuspielen und finden immer einen guten Kompromiss. Würde ich allein entscheiden, wäre es wahrscheinlich weicher, femininer - würde er alleine entscheiden wäre es artify, verrückter und vielleicht minimalistischer. So wie es ist, können wir beide sehr gut damit leben. :)''',
      ),
      newLine,
      BlogCaption('Welches ist Dein Lieblingsstück und warum?'),
      smallNewLine,
      Text(
        '''
Ich habe ehrlich gesagt kein Lieblingsstück, ich hänge nicht an Dingen. Wenn Sascha einen neuen Tisch baut, darf der alte gehen und in einer anderen Familie zum Lebensmittelpunkt werden, das ist ein schöner Fluss. Wir entwerfen gerne neue Dinge, probieren aus und lassen sie irgendwann weiterziehen. Generell mögen wir spannende Produkte feiner kleiner Labels und langlebige Produkte, auf die wir auch gerne sparen.''',
      ),
      newLine,
      BlogCaption('Wo findest Du Inspiration?'),
      smallNewLine,
      Text(
        '''
Auf Instagram, Pinterest oder Designmessen. Aber auch gerne mal in Zeitschriften, vor allem wenn ich mal Ruhe habe ausgiebig zu blättern...''',
      ),
      newLine,
      BlogCaption('Wer inspiriert Dich im Bereich Interior?'),
      smallNewLine,
      Text('Auf Instagram mag ich zum Beispiel folgende Accounts sehr:'),
      LinksColumn(),
      newLine,
      BlogCaption(
        '''
Um nochmal den Bogen zum Anfang zu spannen, wie kam es zu Deiner Instagram Interior Challenge?''',
      ),
      smallNewLine,
      RichTextSection(
        children: [
          InlineText('2016 habe ich eine Challenge auf Instagram entdeckt - '),
          InlineText(
            '#marchmeetthemaker',
            link: 'https://www.instagram.com/explore/tags/marchmeetthemaker/',
          ),
          InlineText(
            '''
 – bei der kleine Labels zu verschiedenen Themen ihr Unternehmen vorstellen konnten. Die Idee fand ich super und weil ich selbst sehr neugierig bin und gerne bei anderen durchs Fenster gucke und schaue wie sie wohnen – wollte ich das Konzept mit den Tages-Aufgaben für die Interiorszene adaptieren. Es haben direkt beim ersten Mal viele große Accounts mitgemacht und mittlerweile gab es schon 13 Ausgaben (immer im Frühjahr und im Herbst). Wenn ich das so sage, bin ich immer wieder erstaunt. Unglaublich, was daraus geworden ist. Seit einem Jahr gibt es auch einen eigenen Account für die Challenge - ''',
          ),
          InlineText(
            '@iic__official',
            link: 'https://www.instagram.com/iic__official/',
          ),
          InlineText(' - und das Interesse ist nach wie vor da.'),
        ],
      ),
      newLine,
      BlogCaption('Wann startet die nächste?'),
      smallNewLine,
      RichTextSection(
        children: [
          InlineText('Schon ganz bald! Die nächste '),
          InlineTextInstagraminteriorchallenge(),
          InlineText(' startet im April 2023.'),
        ],
      ),
      newLine,
      Text('''
Vielen Dank liebe Lilli für den spannenden Einblick in Dein Zuhause.'''),
      newLine,
      Text('Bleib ein Unikat,'),
      Text('Ina'),
      newLine,
      Divider(),
      smallNewLine,
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
          InlineTextRaumunikate(),
        ],
      ),
    ],
  );
}

class InlineTextInstagraminteriorchallenge extends InlineText {
  const InlineTextInstagraminteriorchallenge()
    : super(
        '#instagraminteriorchallenge',
        link:
            'https://www.instagram.com/explore/tags/instagraminteriorchallenge/',
      );
}
