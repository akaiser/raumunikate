import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
import 'package:raumunikate/pages/f/_blog_images.dart';
import 'package:raumunikate/pages/f/_blog_texts.dart';
import 'package:raumunikate/pages/f/_data.dart';

class RaumfuerunikateKerstinDiehl extends StatelessWidget {
  const RaumfuerunikateKerstinDiehl({super.key});

  static const path = blogPathKerstinDiehl;

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
    children: [
      newLine,
      BlogHeader(
        blogName: blogNameKerstinDiehl,
        blogDate: blogDateKerstinDiehl,
      ),
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
          InlineText('Mein zweiter Gast dieser Interviewreihe '),
          InlineTextRaumfuerunikate(),
          InlineText(
            ' ist die zauberhafte Kerstin, die Du auf Instagram unter ',
          ),
          InlineTextKersylovescolor(),
          InlineText(' findest.'),
        ],
      ),
      newLine,
      Text(
        '''
Liebe Kerstin, Dein Zuhause inspiriert mich. Du hast ein Faible für Farbe, bist mutig im Ausdruck und magst es dennoch stilvoll.''',
      ),
      newLine,
      BlogCaption('Bitte erzähle uns etwas über Dich und Dein Zuhause.'),
      smallNewLine,
      Text(
        '''
Liebe Ina, vielen Dank für die Einladung! Ich bin Kerstin, Spitzname Kersy, 46 Jahre und lebe mit meiner Tierschutz Hündin Stella, einem Bracke-Mix aus Kroatien, in Berlin.''',
      ),
      newLine,
      Text(
        '''
Professionelle Expertin auf dem Gebiet des Designs oder der Inneneinrichtung bin ich nicht, ich umgebe mich allerdings gern mit schönen Dingen und habe mich bei meiner Altbau-Wohnung, die ich jetzt seit drei Jahren bewohnen darf, ausgetobt.''',
      ),
      newLine,
      Text(
        '''
Seit mehr als 20 Jahren arbeite ich in der Lifestyle PR, angefangen mit bekannten Beauty- und Fashionmarken, jetzt eher im Food-Bereich. Ich bin in meinem Leben 11 mal umgezogen und z.B. ein Jahr in den USA, 10 Jahre in Hamburg, zwei Jahre in Düsseldorf und zwei Jahre in der Schweiz gelebt bis ich vor drei Jahren nach Berlin gezogen bin. Hier im nördlichen Prenzlauer Berg habe ich nun das erste Mal das Gefühl, richtig angekommen zu sein. Ich liebe Berlin wirklich sehr und bin glücklich eine so tolle Wohnung für mich und Stella gefunden zu haben: einen denkmalgeschützten Altbau vom Anfang des 20. Jahrhunderts, 70qm, 2 Zimmer, mit 3,40m hohen Decken, tollen Fenstern und Flügeltüren. Das habe ich mir immer gewünscht und auch aufgrund der angespannten Wohnungslage in Berlin bin ich wirklich jeden Tag dankbar, so ein Glück mit der Wohnung gehabt zu haben. Denn, neben der guten Lage und dem Altbau, leben hier einfach sehr nette Leute. Gute Nachbarn zu haben, das ist ja eigentlich das Allerwichtigste.''',
      ),
      newLine,
      Text(
        '''
Zum ersten Mal hat mir eine Wohnung den Rahmen gegeben, mich mit meinem Style so richtig auszutoben und ich hatte die Vision, mir hier einen echten Kersy Happy Space zu schaffen. Auch, wenn viele denken könnten, ich sei extravertiert, das bin ich sicher auch zu Teilen, so bin ich auch sehr, sehr gerne einfach nur zuhause und mache es mir hier gemütlich. Kraft und Energie tanke ich vor allem durch den Rückzug in die eigenen vier Wände.''',
      ),
      newLine,
      ResponsiveBlogImages([
        Images.kerstinAndStella,
        Images.living,
        Images.chairs,
      ], flexRow: true),
      newLine,
      BlogCaption(
        'Welche Aspekte verleihen Deiner Wohnung Wohlfühlatmosphäre?',
      ),
      newLine,
      _Citation('''
Mein Zuhause ist für mich mein Happy Space,
dieser positiv aufgeladene Ort
an dem ich mich wohlfühle.'''),
      newLine,
      Text(
        '''
Wenn ich an Wohlfühlatmosphäre denke, denke ich immer an bequeme Sitzmöbel, die habe ich leider nicht, da habe ich mich mehr vom besonderen Design leiten lassen.  Suche aber aktuell nach einem neuen Sofa, das sowohl cool aussieht, aber auch für mich und Stella viel Platz zum Kuscheln bietet. Schöne Atmosphäre kann durch Farbe entstehen. Ich stelle mir da immer vor, wie der Boden und die Wände gemeinsam einen harmonischen Rahmen für das Zimmer bilden, z.B. aus Tapete und Teppich, sprich Wandgestaltung und Bodengestaltung. Beispielweise selbstgemachte Kunst an der Wand und ein schöner Teppich auf dem Boden - das kann einen großen Effekt haben. Persönlich stehe ich da sehr auf Kontraste, z.B. starke Farben kombiniert mit Schwarz/Weiß Kontrasten.''',
      ),
      Text(
        '''
Woran ich mich jeden Tag erfreue, das ist meine Streifentapete im Schlafzimmer, die einen perfekten Kontrast zu dem von mir selbstgemalten bunten Bild schafft. Das entstand ganz intuitiv, denn, nachdem ich mir 3 Poster gekauft habe und gemerkt habe, dass das doch nicht so cool aussieht, wie ich mir das vorgestellt habe, habe ich mir dann selbst das Bild gemalt.''',
      ),
      newLine,
      Text(
        '''
Gegenstände, die einen besondere Bedeutung haben, eine Seele, das sind für mich auch Dinge, die Wohlfühlatmosphäre geben. Das können Mitbringsel von Reisen sein, Kleinanzeigen Schätze, außergewöhnliche Sammelobjekte oder Vintage-Stücke.''',
      ),
      Text(
        '''
Mir ist klar, dass viele Menschen bei Wohlfühlatmosphäre auch an Zimmerpflanzen denken. Ich persönlich bin leider kein Pflanzenmensch, habe auch kein großes Talent dafür.''',
      ),
      newLine,
      BlogCaption(
        '''
Gibt es ein System oder einen Weg, wie Du an Raumgestaltung ran gehst? Oder machst Du das intuitiv?''',
      ),
      smallNewLine,
      Text(
        '''
Also wenn Du einen guten Tipp für mich hast, sehr gerne her damit. Ich bin mittlerweile ein großer Fan von System, weil ich eher Typ "kreative Chaotin" bin. Ich habe da mal ein Zitat gelesen: “Kreativität ist, wenn man einfach macht und guckt was dabei rauskommt.“ Das ist meine Devise, ich habe aber gemerkt, das kann auch ganz schön in die Hose gehen. Vor allen Dingen, wenn man seine Wohnung einrichtet und das neue in den vorhandenen Kontext fügt und es dann doch nicht so passt, wie man es sich vorgestellt hat. Aktuell überlege ich mir, ob ich meinen weißen Wänden mal einen bunten Anstrich verleihen soll und ich kann mich einfach nicht entscheiden. Das hat mich zu dem Entschluss gebracht, auf jeden Fall eine professionelle Farbberatung zu machen. Auch, wenn ich Farben liebe und ein ganz gutes Gefühl dafür habe, manchmal sehe ich den Wald vor lauter Bäumen auch nicht.''',
      ),
      newLine,
      Text(
        '''
So wie die Wohnung aktuell aussieht, habe ich aber alles relativ intuitiv geplant. Ich habe so eine Fotoapp, da lade ich ein Foto des Raums hoch und da hab ich schon Farben ausprobiert, das war aber nicht wirklich professionell, hilft aber, es sich besser vorzustellen.''',
      ),
      newLine,
      Text(
        '''
Eins hab ich aber auf jeden Fall gelernt, man sollte nichts über Knie brechen und sich Zeit lassen. Eine Wohnung muss wachsen und sich entwickeln.''',
      ),
      newLine,
      BlogCaption(
        'Ja und Du hast ja Deinen Weg, Du visualisiert Dir Deine Ideen.',
      ),
      smallNewLine,
      Text(
        '''
Ja, ich visualisiere total. Und das ist glaube ich das, was Du gemeint hast. Ich habe nie Architektur oder Interior studiert, aber ich wollte früher Modedesignerin werden und mich hat es ja dann in meinem Job auch sehr in die Modewelt gezogen. Ich habe ein sehr gutes Vorstellungsvermögen und würde mich als kreative Person bezeichnen.''',
      ),
      newLine,
      BlogCaption(
        '''
Übrigens hat Mode ja ohnehin auch was mit Stil zu tun, ich sehe da eine totale Verknüpfung.''',
      ),
      smallNewLine,
      Text(
        '''
Mode und Interior haben eine starke Verbindung, die aktuell immer wichtiger wird. Mir ist das aber auch schon an mir selbst aufgefallen, die Dinge, die mir gefallen, spiegeln sich oft in meiner Kleidung und in meiner Einrichtung wider. Zum Beispiel habe ich diese eine coole grüne Bubblevase und auf dem Foto trug ich dann Ohrringe, die waren genauso grün und hatten auch so eine wellige Form. Wenn ich in Shootings manchmal meine Lieblingskleider anziehe, dann merke ich auf den Fotos immer, wie krass das einfach in mein Interior passt.''',
      ),
      newLine,
      BlogCaption(
        '''
Mir ist das Bild aufgefallen auf dem Deine Bluse das perfect match zum Teppich ist.''',
      ),
      smallNewLine,
      Text(
        '''
Farbe, Muster, starke Kontraste, das ist eine Ästhetik, zu der ich mich einfach hingezogen fühle. Das zeigt sich dann oft auch in meiner Kleidung. Ich habe z.B. sehr viel mit Streifen oder Schachbrettmuster und so gut wie nichts in Beige, bei meiner Kleidung als auch in der Wohnung.''',
      ),
      newLine,
      BlogCaption('Was darf in einem Raum für Dich nicht fehlen?'),
      smallNewLine,
      Text(
        '''
Früher waren mir Räume ohne Bücher suspekt, oder was ich auch komisch fand, wenn da keine privaten Fotos standen, das fand ich sehr unpersönlich. Das hat sich heute total geändert. Ich mag es, wenn ein Zimmer Persönlichkeit hat, aber es sollte nicht zu viel rumstehen. Alles muss seinen Platz haben. Auch, wenn ich Farben und Formen liebe, so bin ich ein großer Fan von Minimalismus, das würde mir niemand glauben, aber in meiner Wohnung steht echt nicht viel drin. Natürlich nicht der extreme Minimalismus, nach dem Motto, ich darf nur 30 Teile besitzen, das würde nicht mal mit meinen Schuhen funktionieren. Aber ich finde es toll, dass man sehr ausgewählt Dinge in seinem Zuhause hat und es einfach nicht so zugestellt aussieht. Vor allem auch aus dem einfachen Grund heraus, dass ich es echt hasse, zu putzen und aufzuräumen. Es ist wirklich extrem viel einfacher Ordnung zu halten, wenn man nicht so viel hat.''',
      ),
      Text(
        '''
Zurück zum Thema, was darf in einem Raum für mich nicht fehlen? Ich liebe schöne Dinge, aber ganz pragmatisch: essentiell sind für mich ein Bett und Internet. Als ich nach Berlin gezogen bin, habe ich in einem kleinen WG-Zimmer gelebt und war da auch mega happy. Am Ende muss ein Raum ein sicherer Rückzugsort sein, in dem man Energie tanken kann. Heute möchte ich bunt leben und Farbe in die Welt tragen.''',
      ),
      newLine,
      _Citation('''
Farbe und Buntsein hat für mich etwas
ganz lebensbejahendes,
freundliches und fast friedliches.'''),
      newLine,
      ResponsiveBlogImages([
        Images.kerstinAndMirror,
        Images.stellaOnBed,
        Images.clobber,
      ], flexRow: true),
      newLine,
      BlogCaption('Welche Rolle spielt Raumfarbe für Dich?'),
      smallNewLine,
      Text(
        '''
Charlotte Kurt hat so eine ganz tolle pinke Wand in ihrer neuen Wohnung und ich hätte so gern auch so eine. Allerdings habe ich so viele farbige Einrichtungsgegenstände, dass die wiederum eingebettet in diese weiße Welt der Wände ganz gut aussehen und ich glaube, dass es viel Fokus nehmen würde, wenn ich auch Farbe auf die Wände gebe. In letzter Zeit denke ich aber sehr stark darüber nach, z.B. meinem Flur ein Farb-Upgrade zu geben.''',
      ),
      newLine,
      Text(
        '''
Ich verbinde mit Farbe und Farbe in der Wohnung sehr viele positive Gefühle. Man sagt ja nicht umsonst, Farbe macht die Welt ein Stück freundlicher. Farbe kann tolle Akzente setzten, Bereiche in der Wohnung neu fokussieren etc., frag mich also nochmal in ein paar Wochen, aber ich denke, ich gehe das Projekt Wandfarbe demnächst mal an!''',
      ),
      newLine,
      BlogCaption(
        '''
Du wohnst nicht allein, wie bekommst Du Deine Bedürfnisse und die Deiner Hündin Stella unter einen Hut?''',
      ),
      smallNewLine,
      Text(
        '''
Danke für die schöne Frage! Mittlerweile haben so viele Menschen ein Haustier und ich finde es extrem wichtig, hier auch auf die Bedürfnisse der Fellfreundin zu achten. Stella darf in der Wohnung alles, aufs Bett, auf die Couch, ich will, dass sie sich wohlfühlt und ich habe sie gerne um mich. Ein Hund braucht aber vor allem auch einen eigenen ruhigen Rückzugsort, gerne in einer Ecke, daher habe ich hier auch in stylische Hundekörbchen investiert. Darüber hinaus hat ein guter Staubsauger bei mir noch mal einen ganz anderen Stellenwert bekommen. Wir gehen mindestens drei Mal am Tag raus und sie bringt natürlich den Dreck aus Berlin rein in die Wohnung. Ich bin überhaupt nicht pingelig, aber das Leben mit Hund, der dazu auch noch sehr haart,  ist schon eine Herausforderung und das Thema Putzen gehört jetzt leider jeden Tag zu meinem Leben.  Ich habe glaube ich noch nie soviel gestaubsaugt wie heute. Du merkst, PUTZEN ist ein Thema für mich hahaha.''',
      ),
      newLine,
      ResponsiveBlogImages([
        Images.livingCouch,
        Images.refreshing,
        Images.chill,
      ], flexRow: true),
      newLine,
      BlogCaption('Gibt es ein Lieblingsmöbelstück?'),
      smallNewLine,
      Text(
        '''
Die 90er Handchairs aus dem Nagelstudio, die schwarzen Stühle mit den roten Nägeln, das sind schon besondere Glücksfunde. Sie sind auch nicht mega bequem, aber ich liebe sie so sehr, da sie sehr selten und ein ironischer Verweis auf meine Beauty-Leidenschaft sind. Es war eine große Freude, als ich sie nach langem Suchen, mit allen möglichen Suchbegriffen, auf Kleinanzeigen gefunden habe und bei einer Dame in Wuppertal abgeholt habe. Aktuell habe ich noch ein neues Lieblingsstück: mein grünes USM-Haller Sideboard, gestylt mit einer gestreiften Vintage-Kugellampe.''',
      ),
      newLine,
      _Citation("If it's not a hell yeah, it's a no!"),
      newLine,
      Text('''
Hanna Schumi hat mal diesen Spruch gepostet und er begleitet mich seitdem.'''),
      Text(
        '''
Jeder kennt das vielleicht, es gibt diesen Moment, wo man rumrückt und umstellt und irgendwann weiß, hell yeah, das ist es und nicht anders. Das ist so ein tolles Gefühl, wenn es sich einstellt und so ging es mir mit der Lampe auf dem Regal.''',
      ),
      newLine,
      BlogCaption('Welche Relevanz haben Wohntrends für Dein Zuhause?'),
      smallNewLine,
      Text(
        '''
Ehrlich gesagt glaube ich, dass sich die wenigsten Menschen von Trends freimachen können. Es ist wichtig, informiert zu bleiben, d.h. aber nicht, dass mich Trends immer tangieren. Dass aktuell Farbe und Möbel im Memphis Style, Curvy Mirror etc. im Mainstream angesagt sind, finde ich cool, wir alle brauchen mehr Farbe im Leben. Insgesamt bin ich aber kein Fan davon, dass wir auch im Interior immer mehr in die Fast Fashion Richtung gehen. Gute Designer-Stücke sind immer ein Invest und sollten doch etwas länger in der Wohnung stehen. Im best case hat man seinen Style gefunden und muss nicht mit jedem Trend gehen.''',
      ),
      newLine,
      BlogCaption('Wo findest Du Inspiration?'),
      smallNewLine,
      Text(
        '''
Auf jeden Fall Online, ich finde die Interieur Welt auf Instagram total inspirierend. Da gibt es viele deutsche und internationale Accounts, die ich super finde und denen ich sehr gerne folge. Auf Pinterest bin ich natürlich auch unterwegs. Ansonsten bin ich ein großer Fan von Designhotels, von Hotels überhaupt. Designerstücke sind in den meisten Fällen teuer, ich liebe es, wenn Architekten und Stylisten die Mittel hatten, um sich so richtig auszutoben.''',
      ),
      newLine,
      BlogCaption('Wer inspiriert Dich im Bereich Interieur?'),
      smallNewLine,
      Text(
        '''
Um Inspiration für die Einrichtung meiner Wohnung zu finden, war ich sehr oft auf Instagram YouTube und Pinterest unterwegs. Vor allem Bewegtbild, also Homestories auf YouTube fand ich cool, hab aber wenige gefunden, die meiner Ästhetik entsprochen haben. In Erinnerung bleibt mir da immer die Homestory von Herr Klar, ich war so happy, also ich die entdeckt habe. Kürzlich haben wir uns auch mal in Real Life getroffen und er ist genauso toll, wie auf Instagram ;).''',
      ),
      newLine,
      Text(
        '''
Über die  Instagram Interior Challenge habe ich sehr viel Inspiration gefunden und schöne, bunte Accounts, auf die ich sonst vielleicht nicht gestoßen wäre. Es ist schon großartig, wie viele Menschen hier mittlerweile mitmachen, mir fällt aber auf, dass Farbe weiterhin unterrepräsentiert ist.''',
      ),
      newLine,
      Text(
        '''
Ich folge sehr vielen internationalen Accounts, liebe Aden Wang aus den USA oder Helene Rebelo aus Belgien. Aus Lettland folge ich Nitan. Es gibt noch so viele mehr, aber ich kann nicht alle aufzählen und das Schöne an Instagram, es kommen immer wieder neue dazu, die man entdeckt.''',
      ),
      newLine,
      BlogCaption('Kannst Du Deinen Wohnstil beschreiben?'),
      smallNewLine,
      Text(
        '''
Skulpturales Design, Farbe und schwarz/weiß Kontraste sind mein Thema. Ich mag die Stilrichtung von Ettore Sottsas oder Memphis Milano, ich habe aber auch Mid-century Teile und ich kombiniere einfach alles was passt und für mich ein ‘hell yeah‘ ist. Man würde das mit Sicherheit als eklektisch bezeichnen.''',
      ),
      Text(
        '''
Kleiner Exkurs:  Ich bin ein großer Kill Bill Fan. Stehe einfach auf Popkultur. Der Spitzname der Protagonistin ist KIDDO und ich habe ein KIDDO Tattoo.  Mir ist aufgefallen, als ich nach Einrichtungsgegenständen gesucht habe, bspw. einem richtig coolen Spiegel oder Stuhl, dass oft Produkte für Kinder meine Aufmerksamkeit erhascht haben. Die Farbe und Formen waren einfach anders und haben mich angesprochen. Ich frage mich, warum unsere Einrichtung weniger farbig wird, wenn wir erwachsen werden? Das ist doch eigentlich schade? Ich bin erwachsen, stehe mitten im Leben und bin nicht naiv und infantil, aber ich mag originelles Design und Farbe.''',
      ),
      Text(
        '''
Man könnte meinen Style also auch als den CRAZY COLOR KIDDO STYLE bezeichnen ;).''',
      ),
      newLine,
      _Citation('''
Mein Style
der crazycolorkiddostyle.'''),
      newLine,
      Text('''
Liebe Kerstin, vielen Dank für Deine Zeit, es war mir ein großes Vergnügen.'''),
      newLine,
      Text('Bleibe ein Unikat,'),
      Text('Deine Ina'),
      newLine,
      Divider(),
      smallNewLine,
      RichTextSection(
        children: [
          InlineText('Gästin: Kerstin Diehl '),
          InlineTextKersylovescolor(),
        ],
      ),
      Text('Fotografie: Kerstin Diehl und Tonya Matyu'),
      RichTextSection(
        children: [
          InlineText('Verfasst von: Ina Kaiser '),
          InlineTextRaumunikate(),
        ],
      ),
    ],
  );
}

class _Citation extends StatelessWidget {
  const _Citation(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Center(
    child: Text(text, style: context.tt.label, textAlign: TextAlign.center),
  );
}

class InlineTextKersylovescolor extends InlineText {
  const InlineTextKersylovescolor()
    : super(
        '@kersylovescolor',
        link: 'https://www.instagram.com/kersylovescolor/',
      );
}
