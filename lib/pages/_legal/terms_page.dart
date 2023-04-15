// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_legal/_contact.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  static const path = '/agb';

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
        children: [
          SizedBox(height: 24),
          HeadlineText('Allgemeine Geschäftsbedingungen'),
          SizedBox(height: 16),
          Text('''
1. Geltungsbereich und Begriffsbestimmungen
1.1 Diese Vertragsbedingungen gelten für alle Verträge die ein Käufer (im Folgenden „Kunde“) mit

RAUMUNIKATE'''),
          Contact(),
          SizedBox(height: 20),
          Text('''
(im Folgenden „Anbieter“) über die vom Anbieter in seinem Online – Shop angebotene Waren schließt.

1.2 Kunde ist (Gemäß § 13 BGB) ausschließlich jede natürliche Person, die ein Rechtsgeschäft zu einem Zweck abschließt, der überwiegend weder ihrer gewerblichen noch ihrer selbständigen beruflichen Tätigkeit zugerechnet werden kann

1.3 Für die Geschäftsbeziehung zwischen dem Anbieter und dem Kunden gelten ausschließlich die nachfolgenden Allgemeinen Geschäftsbedingungen in ihrer zum Zeitpunkt der Registrierung oder der Vertragsschluss gültigen Fassung. Abweichende Bedingungen des Kunden werden nicht anerkannt, es sei denn, der Anbieter stimmt ihrer Geltung schriftlich zu.

2. Vertragspartner, Vertragsschluss, Vertragstext
Die Bestimmungen dieser AGB gelten für Bestellungen, welche Verbraucher über die Webseite http://raumunikate.komponentenportal.de des Onlineshops RAUMUNIKATE abschließen.

2.1 Der Kaufvertrag kommt zustande mit RAUMUNIKATE. Die Vertragssprache ist Deutsch.

2.2 Mit Einstellung der Produkte in den Online-Shop gibt der Anbieter ein verbindliches Angebot zum Vertragsschluss über diese Artikel ab. Sie können unsere Produkte zunächst unverbindlich in den Warenkorb legen und Ihre Eingaben vor Absenden Ihrer verbindlichen Bestellung jederzeit korrigieren, indem Sie die hierfür im Bestellablauf vorgesehenen und erläuterten Korrekturhilfen nutzen. Der Vertrag kommt zustande, indem Sie durch Anklicken des Bestellbuttons „Zahlungspflichtig bestellen“ das Angebot über die im Warenkorb enthaltenen Waren annehmen. Erst mit dem Versand einer Auftragsbestätigung per E-Mail durch den Anbieter kommt der Vertragsschluss zustande.

2.3 Der Vertragstext des jeweils zwischen dem Anbieter und dem Kunden geschlossenen Vertrages wird durch den Anbieter gespeichert. Die Allgemeinen Geschäftsbedingungen kann der Kunde jederzeit auf dieser Seite einsehen. Die Bestelldaten, die Widerrufsbelehrung sowie die AGB werden dem Kunden per E-Mail zugeschickt. Nach Abschluss der Bestellung ist der Vertragstext durch den Kunden online nicht mehr einsehbar.

3. Preise und Zahlung
Die angezeigten Preise sind Endpreise inklusive der gesetzlichen Umsatzsteuer und Versandkosten.

Im Online - Shop stehen Ihnen grundsätzlich die folgenden Zahlungsarten zur Verfügung:

Vorkasse
Bei Auswahl der Zahlungsart Vorkasse nennt der Anbieter dem Kunden die Bankverbindung in separater E-Mail und liefert die Ware nach Zahlungseingang.

PayPal'''),
          RichTextSection(
            children: [
              InlineText(
                'Im Bestellprozess werden Sie auf die Webseite des Online-Anbieters PayPal weitergeleitet. Bei der Zahlung per "PayPal" erfolgt die Zahlungsabwicklung über PayPal (Europe) S.à r.l. et Cie, S.C.A., 22- 24 Boulevard Royal, L-2449 Luxembourg. Hierfür gelten die Nutzungsbedingungen von Paypal. Diese sind unter ',
              ),
              InlineText(
                'https://www.paypal.com/de/webapps/mpp/ua/useragreement-full',
                link:
                    'https://www.paypal.com/de/webapps/mpp/ua/useragreement-full',
              ),
              InlineText(' einsehbar.'),
            ],
          ),
          Text('''
          
Die Forderungen sind sofort zahlbar ohne Abzug in Euro.

4. Lieferung, Lieferungsbeschränkungen
Der Anbieter liefert nur im Versandweg. Eine Selbstabholung der Ware ist leider nicht möglich. Der Anbieter liefert nicht an Packstationen.

Die Ware wird an die vom Kunden angegeben Lieferanschrift gesendet. Abweichend hiervon ist bei der Zahlung per PayPal die vom Kunden zum Zeitpunkt der Bezahlung bei PayPal hinterlegte Lieferanschrift maßgeblich.

Entstehen dem Anbieter aufgrund der Angabe einer falschen Lieferadresse oder eines falschen Adressaten oder anderer Umstände, die zur Unmöglichkeit der Zustellung führen, zusätzliche Kosten, so sind diese von dem Kunden zu ersetzen.

5. Gefahrenübergang
Das Risiko einer zufälligen Verschlechterung oder einem zufälligen Verlust der Ware liegt bis zur Übergabe der Ware beim Verwender und geht es mit der Übergabe auf den Verbraucher über.

6. Eigentumsvorbehalt
Bis zum vollständigen Empfang des Kaufpreises behält sich der Verwender das Eigentum an der Ware vor.

7. Gewährleistung
7.1 Bei Mängeln gelten die gesetzlichen Regelungen.

7.2 Der Kunde ist verpflichtet, etwaige Mängel unverzüglich gegenüber dem Anbieter schriftlich mitzuteilen. Sie helfen uns, unsere eigenen Ansprüche gegenüber dem Frachtführer bzw. der Transportversicherung geltend machen zu können.

7.3 Für die Gewährleistung einschließlich vertraglicher Schadensersatzansprüche gilt eine Gewährleistungsfrist von einem Jahr.

8. Widerrufsrecht
Ist der Kunde Verbraucher, steht ihm grundsätzlich ein Widerrufsrecht zu. Für das Widerrufsrecht gilt die Widerrufsbelehrung des Anbieters.

Sie haben das Recht, binnen vierzehn Tagen ohne Angabe von Gründen diesen Vertrag zu widerrufen. Die Widerrufsfrist beträgt vierzehn Tage ab dem Tag, an dem Sie oder ein von Ihnen benannter Dritter, der nicht der Beförderer ist, die letzte Ware in Besitz genommen haben bzw. hat. Um Ihr Widerrufsrecht auszuüben, müssen Sie uns RAUMUNIKATE, Straußstraße 27, 89518 Heidenheim, Tel.: 0152 54249392, E-Mail: kontakt@raumunikate.com mittels einer eindeutigen Erklärung (z. B. ein mit der Post versandter Brief oder E-Mail) über Ihren Entschluss, diesen Vertrag zu widerrufen, informieren. Machen Sie von dieser Möglichkeit Gebrauch, so werden wir Ihnen unverzüglich (z. B. per E-Mail) eine Bestätigung über den Eingang eines solchen Widerrufs übermitteln. Zur Wahrung der Widerrufsfrist reicht es aus, dass Sie die Mitteilung über die Ausübung des Widerrufsrechts vor Ablauf der Widerrufsfrist absenden.

Widerrufsfolgen

Wenn Sie diesen Vertrag widerrufen, haben wir Ihnen alle Zahlungen, die wir von Ihnen erhalten haben, einschließlich der Lieferkosten (mit Ausnahme der zusätzlichen Kosten, die sich daraus ergeben, dass Sie eine andere Art der Lieferung als die von uns angebotene, günstigste Standardlieferung gewählt haben), unverzüglich und spätestens binnen vierzehn Tagen ab dem Tag zurückzuzahlen, an dem die Mitteilung über Ihren Widerruf dieses Vertrags bei uns eingegangen ist. Für diese Rückzahlung verwenden wir dasselbe Zahlungsmittel, das Sie bei der ursprünglichen Transaktion eingesetzt haben, es sei denn, mit Ihnen wurde ausdrücklich etwas anderes vereinbart; in keinem Fall werden Ihnen wegen dieser Rückzahlung Entgelte berechnet. Wir können die Rückzahlung verweigern, bis wir die Waren wieder zurückerhalten haben oder bis Sie den Nachweis erbracht haben, dass Sie die Waren zurückgesandt haben, je nachdem, welches der frühere Zeitpunkt ist. Sie haben die Waren unverzüglich und in jedem Fall spätestens binnen vierzehn Tagen ab dem Tag, an dem Sie uns über den Widerruf dieses Vertrags unterrichten, an uns zurückzusenden oder zu übergeben. Die Frist ist gewahrt, wenn Sie die Waren vor Ablauf der Frist von vierzehn Tagen absenden. Sie tragen die unmittelbaren Kosten der Rücksendung der Waren. Sie müssen für einen etwaigen Wertverlust der Waren nur aufkommen, wenn dieser Wertverlust auf einen zur Prüfung der Beschaffenheit, Eigenschaften und Funktionsweise der Waren nicht notwendigen Umgang mit Ihnen zurückzuführen ist.

Ende der Widerrufsbelehrung

9. Datenschutz
Im Hinblick auf den Datenschutz gilt die Datenschutzerklärung des Anbieters unter: Datenschutzerklärung

10. Haftung
10.1 Der Anbieter haftet im Rahmen der gesetzlichen Bestimmungen jeweils unbeschränkt für Schäden

(a) aus der Verletzung des Lebens, des Körpers oder der Gesundheit, die auf einer vorsätzlichen oder fahrlässigen Pflichtverletzung bzw. sonst auf vorsätzlichem oder fahrlässigem Verhalten des Anbieters oder eines seiner gesetzlichen Vertreter oder Erfüllungsgehilfen beruhen;

(b) die auf einer vorsätzlichen oder grob fahrlässigen Pflichtverletzung bzw. sonst auf vorsätzlichem oder grob fahrlässigem Verhalten des Anbieters oder eines seiner gesetzlichen Vertreter oder Erfüllungsgehilfen beruhen.

10.2 Der Anbieter haftet unter Begrenzung auf Ersatz des vertragstypischen vorhersehbaren Schadens für solche Schäden, die auf einer leicht fahrlässigen Verletzung von wesentlichen Pflichten durch den Anbieter oder einen seiner gesetzlichen Vertreter oder Erfüllungsgehilfen beruhen. Wesentliche Pflichten sind Pflichten, deren Erfüllung die ordnungsgemäße Durchführung des Vertrags überhaupt erst ermöglicht und auf deren Einhaltung der Nutzer vertrauen darf.

10.3 Die vorstehenden Bestimmungen gelten sinngemäß auch für die Haftung des Anbieters im Hinblick auf den Ersatz vergeblicher Aufwendungen.

11. Schlussbestimmungen
11.1 Auf den vorliegenden Vertrag ist ausschließlich deutsches Recht unter Ausschluss des UN-Kaufrechts anwendbar.

11.2 Sämtliche Vereinbarungen, die eine Änderung, Ergänzung oder Konkretisierung dieser Vertragsbedingungen beinhalten, sowie besondere Zusicherungen und Abmachungen bedürfen der Textform gem. § 126 b BGB. Schriftform ist auch erforderlich, wenn diese Form bei Vertragsänderungen abgedungen werden soll.

11.3 Sollten einzelne Bestimmungen dieses Vertrages unwirksam sein oder die Wirksamkeit durch einen später eintretenden Umstand verlieren, bleibt die Wirksamkeit dieses Vertrages im Übrigen unberührt. Anstelle der unwirksamen Vertragsbestimmungen tritt eine Regelung, die dem am nächsten kommt, was die Vertragsparteien gewollt hätten, sofern sie den betreffenden Punkt bedacht hätten. Entsprechendes gilt für Lücken dieses Vertrages.'''),
        ],
      );
}
