// ignore_for_file: lines_longer_than_80_chars
import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_legal/_contact_column.dart';
import 'package:raumunikate/pages/_shared/components/headline_text.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage();

  static const path = '/datenschutz';

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
    preferListView: true,
    children: [
      newLine,
      HeadlineText('Datenschutzerklärung'),
      newLine,
      Text(
        'Wir freuen uns sehr über Ihr Interesse an unserem Unternehmen. Datenschutz hat einen besonders hohen Stellenwert für die Geschäftsleitung der Raumunikate Ina Kaiser. Eine Nutzung der Internetseiten der Raumunikate Ina Kaiser ist grundsätzlich ohne jede Angabe personenbezogener Daten möglich. Sofern eine betroffene Person besondere Services unseres Unternehmens über unsere Internetseite in Anspruch nehmen möchte, könnte jedoch eine Verarbeitung personenbezogener Daten erforderlich werden. Ist die Verarbeitung personenbezogener Daten erforderlich und besteht für eine solche Verarbeitung keine gesetzliche Grundlage, holen wir generell eine Einwilligung der betroffenen Person ein.',
      ),
      newLine,
      Text(
        'Die Verarbeitung personenbezogener Daten, beispielsweise des Namens, der Anschrift, E-Mail-Adresse oder Telefonnummer einer betroffenen Person, erfolgt stets im Einklang mit der Datenschutz-Grundverordnung und in Übereinstimmung mit den für die Raumunikate Ina Kaiser geltenden landesspezifischen Datenschutzbestimmungen. Mittels dieser Datenschutzerklärung möchte unser Unternehmen die Öffentlichkeit über Art, Umfang und Zweck der von uns erhobenen, genutzten und verarbeiteten personenbezogenen Daten informieren. Ferner werden betroffene Personen mittels dieser Datenschutzerklärung über die ihnen zustehenden Rechte aufgeklärt',
      ),
      newLine,
      Text(
        'Die Raumunikate Ina Kaiser hat als für die Verarbeitung Verantwortlicher zahlreiche technische und organisatorische Maßnahmen umgesetzt, um einen möglichst lückenlosen Schutz der über diese Internetseite verarbeiteten personenbezogenen Daten sicherzustellen. Dennoch können Internetbasierte Datenübertragungen grundsätzlich Sicherheitslücken aufweisen, sodass ein absoluter Schutz nicht gewährleistet werden kann. Aus diesem Grund steht es jeder betroffenen Person frei, personenbezogene Daten auch auf alternativen Wegen, beispielsweise telefonisch, an uns zu übermitteln.',
      ),
      newLine,
      Text('1. Begriffsbestimmungen'),
      newLine,
      Text(
        'Die Datenschutzerklärung der Raumunikate Ina Kaiser beruht auf den Begrifflichkeiten, die durch den Europäischen Richtlinien- und Verordnungsgeber beim Erlass der Datenschutz-Grundverordnung (DS-GVO) verwendet wurden. Unsere Datenschutzerklärung soll sowohl für die Öffentlichkeit als auch für unsere Kunden und Geschäftspartner einfach lesbar und verständlich sein. Um dies zu gewährleisten, möchten wir vorab die verwendeten Begrifflichkeiten erläutern.',
      ),
      newLine,
      Text(
        'Wir verwenden in dieser Datenschutzerklärung unter anderem die folgenden Begriffe:',
      ),
      Text('a)    personenbezogene Daten'),
      Text(
        'Personenbezogene Daten sind alle Informationen, die sich auf eine identifizierte oder identifizierbare natürliche Person (im Folgenden "betroffene Person") beziehen. Als identifizierbar wird eine natürliche Person angesehen, die direkt oder indirekt, insbesondere mittels Zuordnung zu einer Kennung wie einem Namen, zu einer Kennnummer, zu Standortdaten, zu einer Online-Kennung oder zu einem oder mehreren besonderen Merkmalen, die Ausdruck der physischen, physiologischen, genetischen, psychischen, wirtschaftlichen, kulturellen oder sozialen Identität dieser natürlichen Person sind, identifiziert werden kann.',
      ),
      newLine,
      Text('b)    betroffene Person'),
      Text(
        'Betroffene Person ist jede identifizierte oder identifizierbare natürliche Person, deren personenbezogene Daten von dem für die Verarbeitung Verantwortlichen verarbeitet werden.',
      ),
      Text('c)    Verarbeitung'),
      Text(
        'Verarbeitung ist jeder mit oder ohne Hilfe automatisierter Verfahren ausgeführte Vorgang oder jede solche Vorgangsreihe im Zusammenhang mit personenbezogenen Daten wie das Erheben, das Erfassen, die Organisation, das Ordnen, die Speicherung, die Anpassung oder Veränderung, das Auslesen, das Abfragen, die Verwendung, die Offenlegung durch Übermittlung, Verbreitung oder eine andere Form der Bereitstellung, den Abgleich oder die Verknüpfung, die Einschränkung, das Löschen oder die Vernichtung.',
      ),
      Text('d)    Einschränkung der Verarbeitung'),
      Text(
        'Einschränkung der Verarbeitung ist die Markierung gespeicherter personenbezogener Daten mit dem Ziel, ihre künftige Verarbeitung einzuschränken.',
      ),
      Text('e)    Profiling'),
      Text(
        'Profiling ist jede Art der automatisierten Verarbeitung personenbezogener Daten, die darin besteht, dass diese personenbezogenen Daten verwendet werden, um bestimmte persönliche Aspekte, die sich auf eine natürliche Person beziehen, zu bewerten, insbesondere, um Aspekte bezüglich Arbeitsleistung, wirtschaftlicher Lage, Gesundheit, persönlicher Vorlieben, Interessen, Zuverlässigkeit, Verhalten, Aufenthaltsort oder Ortswechsel dieser natürlichen Person zu analysieren oder vorherzusagen.',
      ),
      Text('f)    Pseudonymisierung'),
      Text(
        'Pseudonymisierung ist die Verarbeitung personenbezogener Daten in einer Weise, auf welche die personenbezogenen Daten ohne Hinzuziehung zusätzlicher Informationen nicht mehr einer spezifischen betroffenen Person zugeordnet werden können, sofern diese zusätzlichen Informationen gesondert aufbewahrt werden und technischen und organisatorischen Maßnahmen unterliegen, die gewährleisten, dass die personenbezogenen Daten nicht einer identifizierten oder identifizierbaren natürlichen Person zugewiesen werden.',
      ),
      Text('g)    Verantwortlicher oder für die Verarbeitung Verantwortlicher'),
      Text(
        'Verantwortlicher oder für die Verarbeitung Verantwortlicher ist die natürliche oder juristische Person, Behörde, Einrichtung oder andere Stelle, die allein oder gemeinsam mit anderen über die Zwecke und Mittel der Verarbeitung von personenbezogenen Daten entscheidet. Sind die Zwecke und Mittel dieser Verarbeitung durch das Unionsrecht oder das Recht der Mitgliedstaaten vorgegeben, so kann der Verantwortliche beziehungsweise können die bestimmten Kriterien seiner Benennung nach dem Unionsrecht oder dem Recht der Mitgliedstaaten vorgesehen werden.',
      ),
      Text('h)    Auftragsverarbeiter'),
      Text(
        'Auftragsverarbeiter ist eine natürliche oder juristische Person, Behörde, Einrichtung oder andere Stelle, die personenbezogene Daten im Auftrag des Verantwortlichen verarbeitet.',
      ),
      Text('i)    Empfänger'),
      Text(
        'Empfänger ist eine natürliche oder juristische Person, Behörde, Einrichtung oder andere Stelle, der personenbezogene Daten offengelegt werden, unabhängig davon, ob es sich bei ihr um einen Dritten handelt oder nicht. Behörden, die im Rahmen eines bestimmten Untersuchungsauftrags nach dem Unionsrecht oder dem Recht der Mitgliedstaaten möglicherweise personenbezogene Daten erhalten, gelten jedoch nicht als Empfänger.',
      ),
      Text('j)    Dritter'),
      Text(
        'Dritter ist eine natürliche oder juristische Person, Behörde, Einrichtung oder andere Stelle außer der betroffenen Person, dem Verantwortlichen, dem Auftragsverarbeiter und den Personen, die unter der unmittelbaren Verantwortung des Verantwortlichen oder des Auftragsverarbeiters befugt sind, die personenbezogenen Daten zu verarbeiten.',
      ),
      Text('k)    Einwilligung'),
      Text(
        'Einwilligung ist jede von der betroffenen Person freiwillig für den bestimmten Fall in informierter Weise und unmissverständlich abgegebene Willensbekundung in Form einer Erklärung oder einer sonstigen eindeutigen bestätigenden Handlung, mit der die betroffene Person zu verstehen gibt, dass sie mit der Verarbeitung der sie betreffenden personenbezogenen Daten einverstanden ist.',
      ),
      newLine,
      Text('2. Name und Anschrift des für die Verarbeitung Verantwortlichen'),
      Text(
        'Verantwortlicher im Sinne der Datenschutz-Grundverordnung, sonstiger in den Mitgliedstaaten der Europäischen Union geltenden Datenschutzgesetze und anderer Bestimmungen mit datenschutzrechtlichem Charakter ist die:',
      ),
      newLine,
      Text('RAUMUNIKATE'),
      ContactColumn(),
      newLine,
      Text('3. Cookies'),
      Text(
        'Die Internetseiten der Raumunikate Ina Kaiser verwenden Cookies. Cookies sind Textdateien, welche über einen Internetbrowser auf einem Computersystem abgelegt und gespeichert werden.',
      ),
      newLine,
      Text(
        'Zahlreiche Internetseiten und Server verwenden Cookies. Viele Cookies enthalten eine sogenannte Cookie-ID. Eine Cookie-ID ist eine eindeutige Kennung des Cookies. Sie besteht aus einer Zeichenfolge, durch welche Internetseiten und Server dem konkreten Internetbrowser zugeordnet werden können, in dem das Cookie gespeichert wurde. Dies ermöglicht es den besuchten Internetseiten und Servern, den individuellen Browser der betroffenen Person von anderen Internetbrowsern, die andere Cookies enthalten, zu unterscheiden. Ein bestimmter Internetbrowser kann über die eindeutige Cookie-ID wiedererkannt und identifiziert werden.',
      ),
      newLine,
      Text(
        'Durch den Einsatz von Cookies kann die Raumunikate Ina Kaiser den Nutzern dieser Internetseite nutzerfreundlichere Services bereitstellen, die ohne die Cookie-Setzung nicht möglich wären.',
      ),
      newLine,
      Text(
        'Mittels eines Cookies können die Informationen und Angebote auf unserer Internetseite im Sinne des Benutzers optimiert werden. Cookies ermöglichen uns, wie bereits erwähnt, die Benutzer unserer Internetseite wiederzuerkennen. Zweck dieser Wiedererkennung ist es, den Nutzern die Verwendung unserer Internetseite zu erleichtern. Der Benutzer einer Internetseite, die Cookies verwendet, muss beispielsweise nicht bei jedem Besuch der Internetseite erneut seine Zugangsdaten eingeben, weil dies von der Internetseite und dem auf dem Computersystem des Benutzers abgelegten Cookie übernommen wird. Ein weiteres Beispiel ist das Cookie eines Warenkorbes im Online-Shop. Der Online-Shop merkt sich die Artikel, die ein Kunde in den virtuellen Warenkorb gelegt hat, über ein Cookie.',
      ),
      newLine,
      Text(
        'Die betroffene Person kann die Setzung von Cookies durch unsere Internetseite jederzeit mittels einer entsprechenden Einstellung des genutzten Internetbrowsers verhindern und damit der Setzung von Cookies dauerhaft widersprechen. Ferner können bereits gesetzte Cookies jederzeit über einen Internetbrowser oder andere Softwareprogramme gelöscht werden. Dies ist in allen gängigen Internetbrowsern möglich. Deaktiviert die betroffene Person die Setzung von Cookies in dem genutzten Internetbrowser, sind unter Umständen nicht alle Funktionen unserer Internetseite vollumfänglich nutzbar.',
      ),
      newLine,
      Text('4. Erfassung von allgemeinen Daten und Informationen'),
      Text(
        'Die Internetseite der Raumunikate Ina Kaiser erfasst mit jedem Aufruf der Internetseite durch eine betroffene Person oder ein automatisiertes System eine Reihe von allgemeinen Daten und Informationen. Diese allgemeinen Daten und Informationen werden in den Logfiles des Servers gespeichert. Erfasst werden können die (1) verwendeten Browsertypen und Versionen, (2) das vom zugreifenden System verwendete Betriebssystem, (3) die Internetseite, von welcher ein zugreifendes System auf unsere Internetseite gelangt (sogenannte Referrer), (4) die Unterwebseiten, welche über ein zugreifendes System auf unserer Internetseite angesteuert werden, (5) das Datum und die Uhrzeit eines Zugriffs auf die Internetseite, (6) eine Internet-Protokoll-Adresse (IP-Adresse), (7) der Internet-Service-Provider des zugreifenden Systems und (8) sonstige ähnliche Daten und Informationen, die der Gefahrenabwehr im Falle von Angriffen auf unsere informationstechnologischen Systeme dienen.',
      ),
      newLine,
      Text(
        'Bei der Nutzung dieser allgemeinen Daten und Informationen zieht die Raumunikate Ina Kaiser keine Rückschlüsse auf die betroffene Person. Diese Informationen werden vielmehr benötigt, um (1) die Inhalte unserer Internetseite korrekt auszuliefern, (2) die Inhalte unserer Internetseite sowie die Werbung für diese zu optimieren, (3) die dauerhafte Funktionsfähigkeit unserer informationstechnologischen Systeme und der Technik unserer Internetseite zu gewährleisten sowie (4) um Strafverfolgungsbehörden im Falle eines Cyberangriffes die zur Strafverfolgung notwendigen Informationen bereitzustellen. Diese anonym erhobenen Daten und Informationen werden durch die Raumunikate Ina Kaiser daher einerseits statistisch und ferner mit dem Ziel ausgewertet, den Datenschutz und die Datensicherheit in unserem Unternehmen zu erhöhen, um letztlich ein optimales Schutzniveau für die von uns verarbeiteten personenbezogenen Daten sicherzustellen. Die anonymen Daten der Server-Logfiles werden getrennt von allen durch eine betroffene Person angegebenen personenbezogenen Daten gespeichert.',
      ),
      newLine,
      Text('5. Registrierung auf unserer Internetseite'),
      Text(
        'Die betroffene Person hat die Möglichkeit, sich auf der Internetseite des für die Verarbeitung Verantwortlichen unter Angabe von personenbezogenen Daten zu registrieren. Welche personenbezogenen Daten dabei an den für die Verarbeitung Verantwortlichen übermittelt werden, ergibt sich aus der jeweiligen Eingabemaske, die für die Registrierung verwendet wird. Die von der betroffenen Person eingegebenen personenbezogenen Daten werden ausschließlich für die interne Verwendung bei dem für die Verarbeitung Verantwortlichen und für eigene Zwecke erhoben und gespeichert. Der für die Verarbeitung Verantwortliche kann die Weitergabe an einen oder mehrere Auftragsverarbeiter, beispielsweise einen Paketdienstleister, veranlassen, der die personenbezogenen Daten ebenfalls ausschließlich für eine interne Verwendung, die dem für die Verarbeitung Verantwortlichen zuzurechnen ist, nutzt.',
      ),
      newLine,
      Text(
        'Durch eine Registrierung auf der Internetseite des für die Verarbeitung Verantwortlichen wird ferner die vom Internet-Service-Provider (ISP) der betroffenen Person vergebene IP-Adresse, das Datum sowie die Uhrzeit der Registrierung gespeichert. Die Speicherung dieser Daten erfolgt vor dem Hintergrund, dass nur so der Missbrauch unserer Dienste verhindert werden kann, und diese Daten im Bedarfsfall ermöglichen, begangene Straftaten aufzuklären. Insofern ist die Speicherung dieser Daten zur Absicherung des für die Verarbeitung Verantwortlichen erforderlich. Eine Weitergabe dieser Daten an Dritte erfolgt grundsätzlich nicht, sofern keine gesetzliche Pflicht zur Weitergabe besteht oder die Weitergabe der Strafverfolgung dient.',
      ),
      newLine,
      Text(
        'Die Registrierung der betroffenen Person unter freiwilliger Angabe personenbezogener Daten dient dem für die Verarbeitung Verantwortlichen dazu, der betroffenen Person Inhalte oder Leistungen anzubieten, die aufgrund der Natur der Sache nur registrierten Benutzern angeboten werden können. Registrierten Personen steht die Möglichkeit frei, die bei der Registrierung angegebenen personenbezogenen Daten jederzeit abzuändern oder vollständig aus dem Datenbestand des für die Verarbeitung Verantwortlichen löschen zu lassen.',
      ),
      newLine,
      Text(
        'Der für die Verarbeitung Verantwortliche erteilt jeder betroffenen Person jederzeit auf Anfrage Auskunft darüber, welche personenbezogenen Daten über die betroffene Person gespeichert sind. Ferner berichtigt oder löscht der für die Verarbeitung Verantwortliche personenbezogene Daten auf Wunsch oder Hinweis der betroffenen Person, soweit dem keine gesetzlichen Aufbewahrungspflichten entgegenstehen. Die Gesamtheit der Mitarbeiter des für die Verarbeitung Verantwortlichen stehen der betroffenen Person in diesem Zusammenhang als Ansprechpartner zur Verfügung.',
      ),
      newLine,
      Text('6. Kontaktmöglichkeit über die Internetseite'),
      Text(
        'Die Internetseite der Raumunikate Ina Kaiser enthält aufgrund von gesetzlichen Vorschriften Angaben, die eine schnelle elektronische Kontaktaufnahme zu unserem Unternehmen sowie eine unmittelbare Kommunikation mit uns ermöglichen, was ebenfalls eine allgemeine Adresse der sogenannten elektronischen Post (E-Mail-Adresse) umfasst. Sofern eine betroffene Person per E-Mail oder über ein Kontaktformular den Kontakt mit dem für die Verarbeitung Verantwortlichen aufnimmt, werden die von der betroffenen Person übermittelten personenbezogenen Daten automatisch gespeichert. Solche auf freiwilliger Basis von einer betroffenen Person an den für die Verarbeitung Verantwortlichen übermittelten personenbezogenen Daten werden für Zwecke der Bearbeitung oder der Kontaktaufnahme zur betroffenen Person gespeichert. Es erfolgt keine Weitergabe dieser personenbezogenen Daten an Dritte.',
      ),
      newLine,
      Text(
        '7. Routinemäßige Löschung und Sperrung von personenbezogenen Daten',
      ),
      Text(
        'Der für die Verarbeitung Verantwortliche verarbeitet und speichert personenbezogene Daten der betroffenen Person nur für den Zeitraum, der zur Erreichung des Speicherungszwecks erforderlich ist oder sofern dies durch den Europäischen Richtlinien- und Verordnungsgeber oder einen anderen Gesetzgeber in Gesetzen oder Vorschriften, welchen der für die Verarbeitung Verantwortliche unterliegt, vorgesehen wurde.',
      ),
      newLine,
      Text(
        'Entfällt der Speicherungszweck oder läuft eine vom Europäischen Richtlinien- und Verordnungsgeber oder einem anderen zuständigen Gesetzgeber vorgeschriebene Speicherfrist ab, werden die personenbezogenen Daten routinemäßig und entsprechend den gesetzlichen Vorschriften gesperrt oder gelöscht.',
      ),
      newLine,
      Text('8. Rechte der betroffenen Person'),
      Text('a)    Recht auf Bestätigung'),
      Text(
        'Jede betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber eingeräumte Recht, von dem für die Verarbeitung Verantwortlichen eine Bestätigung darüber zu verlangen, ob sie betreffende personenbezogene Daten verarbeitet werden. Möchte eine betroffene Person dieses Bestätigungsrecht in Anspruch nehmen, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden.',
      ),
      Text('b)    Recht auf Auskunft'),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, jederzeit von dem für die Verarbeitung Verantwortlichen unentgeltliche Auskunft über die zu seiner Person gespeicherten personenbezogenen Daten und eine Kopie dieser Auskunft zu erhalten. Ferner hat der Europäische Richtlinien- und Verordnungsgeber der betroffenen Person Auskunft über folgende Informationen zugestanden:',
      ),
      Text('- die Verarbeitungszwecke'),
      Text('- die Kategorien personenbezogener Daten, die verarbeitet werden'),
      Text(
        '- die Empfänger oder Kategorien von Empfängern, gegenüber denen die personenbezogenen Daten offengelegt worden sind oder noch offengelegt werden, insbesondere bei Empfängern in Drittländern oder bei internationalen Organisationen',
      ),
      Text(
        '- falls möglich die geplante Dauer, für die die personenbezogenen Daten gespeichert werden, oder, falls dies nicht möglich ist, die Kriterien für die Festlegung dieser Dauer',
      ),
      Text(
        '- das Bestehen eines Rechts auf Berichtigung oder Löschung der sie betreffenden personenbezogenen Daten oder auf Einschränkung der Verarbeitung durch den Verantwortlichen oder eines Widerspruchsrechts gegen diese Verarbeitung',
      ),
      Text('- das Bestehen eines Beschwerderechts bei einer Aufsichtsbehörde'),
      Text(
        '- wenn die personenbezogenen Daten nicht bei der betroffenen Person erhoben werden: Alle verfügbaren Informationen über die Herkunft der Daten',
      ),
      Text(
        '- das Bestehen einer automatisierten Entscheidungsfindung einschließlich Profiling gemäß Artikel 22 Abs.1 und 4 DS-GVO und — zumindest in diesen Fällen — aussagekräftige Informationen über die involvierte Logik sowie die Tragweite und die angestrebten Auswirkungen einer derartigen Verarbeitung für die betroffene Person',
      ),
      newLine,
      Text(
        'Ferner steht der betroffenen Person ein Auskunftsrecht darüber zu, ob personenbezogene Daten an ein Drittland oder an eine internationale Organisation übermittelt wurden. Sofern dies der Fall ist, so steht der betroffenen Person im Übrigen das Recht zu, Auskunft über die geeigneten Garantien im Zusammenhang mit der Übermittlung zu erhalten. Möchte eine betroffene Person dieses Auskunftsrecht in Anspruch nehmen, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden.',
      ),
      newLine,
      Text('c)    Recht auf Berichtigung'),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, die unverzügliche Berichtigung sie betreffender unrichtiger personenbezogener Daten zu verlangen. Ferner steht der betroffenen Person das Recht zu, unter Berücksichtigung der Zwecke der Verarbeitung, die Vervollständigung unvollständiger personenbezogener Daten — auch mittels einer ergänzenden Erklärung — zu verlangen.',
      ),
      Text(
        'Möchte eine betroffene Person dieses Berichtigungsrecht in Anspruch nehmen, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden.',
      ),
      Text('d)    Recht auf Löschung (Recht auf Vergessen werden)'),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, von dem Verantwortlichen zu verlangen, dass die sie betreffenden personenbezogenen Daten unverzüglich gelöscht werden, sofern einer der folgenden Gründe zutrifft und soweit die Verarbeitung nicht erforderlich ist:',
      ),
      Text(
        '- Die personenbezogenen Daten wurden für solche Zwecke erhoben oder auf sonstige Weise verarbeitet, für welche sie nicht mehr notwendig sind.',
      ),
      Text(
        '- Die betroffene Person widerruft ihre Einwilligung, auf die sich die Verarbeitung gemäß Art. 6 Abs. 1 Buchstabe a DS-GVO oder Art. 9 Abs. 2 Buchstabe a DS-GVO stützte, und es fehlt an einer anderweitigen Rechtsgrundlage für die Verarbeitung.',
      ),
      Text(
        '- Die betroffene Person legt gemäß Art. 21 Abs. 1 DS-GVO Widerspruch gegen die Verarbeitung ein, und es liegen keine vorrangigen berechtigten Gründe für die Verarbeitung vor, oder die betroffene Person legt gemäß Art. 21 Abs. 2 DS-GVO Widerspruch gegen die Verarbeitung ein.',
      ),
      Text('- Die personenbezogenen Daten wurden unrechtmäßig verarbeitet.'),
      Text(
        '- Die Löschung der personenbezogenen Daten ist zur Erfüllung einer rechtlichen Verpflichtung nach dem Unionsrecht oder dem Recht der Mitgliedstaaten erforderlich, dem der Verantwortliche unterliegt.',
      ),
      Text(
        '- Die personenbezogenen Daten wurden in Bezug auf angebotene Dienste der Informationsgesellschaft gemäß Art. 8 Abs. 1 DS-GVO erhoben.',
      ),
      newLine,
      Text(
        'Sofern einer der oben genannten Gründe zutrifft und eine betroffene Person die Löschung von personenbezogenen Daten, die bei der Raumunikate Ina Kaiser gespeichert sind, veranlassen möchte, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden. Der Mitarbeiter der Raumunikate Ina Kaiser wird veranlassen, dass dem Löschverlangen unverzüglich nachgekommen wird. Wurden die personenbezogenen Daten von der Raumunikate Ina Kaiser öffentlich gemacht und ist unser Unternehmen als Verantwortlicher gemäß Art. 17 Abs. 1 DS-GVO zur Löschung der personenbezogenen Daten verpflichtet, so trifft die Raumunikate Ina Kaiser unter Berücksichtigung der verfügbaren Technologie und der Implementierungskosten angemessene Maßnahmen, auch technischer Art, um andere für die Datenverarbeitung Verantwortliche, welche die veröffentlichten personenbezogenen Daten verarbeiten, darüber in Kenntnis zu setzen, dass die betroffene Person von diesen anderen für die Datenverarbeitung Verantwortlichen die Löschung sämtlicher Links zu diesen personenbezogenen Daten oder von Kopien oder Replikationen dieser personenbezogenen Daten verlangt hat, soweit die Verarbeitung nicht erforderlich ist. Der Mitarbeiter der Raumunikate Ina Kaiser wird im Einzelfall das Notwendige veranlassen.',
      ),
      newLine,
      Text('e)    Recht auf Einschränkung der Verarbeitung'),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, von dem Verantwortlichen die Einschränkung der Verarbeitung zu verlangen, wenn eine der folgenden Voraussetzungen gegeben ist:',
      ),
      Text(
        '- Die Richtigkeit der personenbezogenen Daten wird von der betroffenen Person bestritten, und zwar für eine Dauer, die es dem Verantwortlichen ermöglicht, die Richtigkeit der personenbezogenen Daten zu überprüfen.',
      ),
      Text(
        '- Die Verarbeitung ist unrechtmäßig, die betroffene Person lehnt die Löschung der personenbezogenen Daten ab und verlangt stattdessen die Einschränkung der Nutzung der personenbezogenen Daten.',
      ),
      Text(
        '- Der Verantwortliche benötigt die personenbezogenen Daten für die Zwecke der Verarbeitung nicht länger, die betroffene Person benötigt sie jedoch zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen.',
      ),
      Text(
        '- Die betroffene Person hat Widerspruch gegen die Verarbeitung gem. Art. 21 Abs. 1 DS-GVO eingelegt und es steht noch nicht fest, ob die berechtigten Gründe des Verantwortlichen gegenüber denen der betroffenen Person überwiegen.',
      ),
      newLine,
      Text(
        'Sofern eine der oben genannten Voraussetzungen gegeben ist und eine betroffene Person die Einschränkung von personenbezogenen Daten, die bei der Raumunikate Ina Kaiser gespeichert sind, verlangen möchte, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden. Der Mitarbeiter der Raumunikate Ina Kaiser wird die Einschränkung der Verarbeitung veranlassen.',
      ),
      newLine,
      Text('f)    Recht auf Datenübertragbarkeit'),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, die sie betreffenden personenbezogenen Daten, welche durch die betroffene Person einem Verantwortlichen bereitgestellt wurden, in einem strukturierten, gängigen und maschinenlesbaren Format zu erhalten. Sie hat außerdem das Recht, diese Daten einem anderen Verantwortlichen ohne Behinderung durch den Verantwortlichen, dem die personenbezogenen Daten bereitgestellt wurden, zu übermitteln, sofern die Verarbeitung auf der Einwilligung gemäß Art. 6 Abs. 1 Buchstabe a DS-GVO oder Art. 9 Abs. 2 Buchstabe a DS-GVO oder auf einem Vertrag gemäß Art. 6 Abs. 1 Buchstabe b DS-GVO beruht und die Verarbeitung mithilfe automatisierter Verfahren erfolgt, sofern die Verarbeitung nicht für die Wahrnehmung einer Aufgabe erforderlich ist, die im öffentlichen Interesse liegt oder in Ausübung öffentlicher Gewalt erfolgt, welche dem Verantwortlichen übertragen wurde.',
      ),
      Text(
        'Ferner hat die betroffene Person bei der Ausübung ihres Rechts auf Datenübertragbarkeit gemäß Art. 20 Abs. 1 DS-GVO das Recht, zu erwirken, dass die personenbezogenen Daten direkt von einem Verantwortlichen an einen anderen Verantwortlichen übermittelt werden, soweit dies technisch machbar ist und sofern hiervon nicht die Rechte und Freiheiten anderer Personen beeinträchtigt werden.',
      ),
      Text(
        'Zur Geltendmachung des Rechts auf Datenübertragbarkeit kann sich die betroffene Person jederzeit an einen Mitarbeiter der Raumunikate Ina Kaiser wenden.',
      ),
      Text('g)    Recht auf Widerspruch'),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, aus Gründen, die sich aus ihrer besonderen Situation ergeben, jederzeit gegen die Verarbeitung sie betreffender personenbezogener Daten, die aufgrund von Art. 6 Abs. 1 Buchstaben e oder f DS-GVO erfolgt, Widerspruch einzulegen. Dies gilt auch für ein auf diese Bestimmungen gestütztes Profiling.',
      ),
      Text(
        'Die Raumunikate Ina Kaiser verarbeitet die personenbezogenen Daten im Falle des Widerspruchs nicht mehr, es sei denn, wir können zwingende schutzwürdige Gründe für die Verarbeitung nachweisen, die den Interessen, Rechten und Freiheiten der betroffenen Person überwiegen, oder die Verarbeitung dient der Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen.',
      ),
      Text(
        'Verarbeitet die Raumunikate Ina Kaiser personenbezogene Daten, um Direktwerbung zu betreiben, so hat die betroffene Person das Recht, jederzeit Widerspruch gegen die Verarbeitung der personenbezogenen Daten zum Zwecke derartiger Werbung einzulegen. Dies gilt auch für das Profiling, soweit es mit solcher Direktwerbung in Verbindung steht. Widerspricht die betroffene Person gegenüber der Raumunikate Ina Kaiser der Verarbeitung für Zwecke der Direktwerbung, so wird die Raumunikate Ina Kaiser die personenbezogenen Daten nicht mehr für diese Zwecke verarbeiten.',
      ),
      Text(
        'Zudem hat die betroffene Person das Recht, aus Gründen, die sich aus ihrer besonderen Situation ergeben, gegen die sie betreffende Verarbeitung personenbezogener Daten, die bei der Raumunikate Ina Kaiser zu wissenschaftlichen oder historischen Forschungszwecken oder zu statistischen Zwecken gemäß Art. 89 Abs. 1 DS-GVO erfolgen, Widerspruch einzulegen, es sei denn, eine solche Verarbeitung ist zur Erfüllung einer im öffentlichen Interesse liegenden Aufgabe erforderlich.',
      ),
      Text(
        'Zur Ausübung des Rechts auf Widerspruch kann sich die betroffene Person direkt an jeden Mitarbeiter der Raumunikate Ina Kaiser oder einen anderen Mitarbeiter wenden. Der betroffenen Person steht es ferner frei, im Zusammenhang mit der Nutzung von Diensten der Informationsgesellschaft, ungeachtet der Richtlinie 2002/58/EG, ihr Widerspruchsrecht mittels automatisierter Verfahren auszuüben, bei denen technische Spezifikationen verwendet werden.',
      ),
      Text(
        'h)    Automatisierte Entscheidungen im Einzelfall einschließlich Profiling',
      ),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, nicht einer ausschließlich auf einer automatisierten Verarbeitung — einschließlich Profiling — beruhenden Entscheidung unterworfen zu werden, die ihr gegenüber rechtliche Wirkung entfaltet oder sie in ähnlicher Weise erheblich beeinträchtigt, sofern die Entscheidung (1) nicht für den Abschluss oder die Erfüllung eines Vertrags zwischen der betroffenen Person und dem Verantwortlichen erforderlich ist, oder (2) aufgrund von Rechtsvorschriften der Union oder der Mitgliedstaaten, denen der Verantwortliche unterliegt, zulässig ist und diese Rechtsvorschriften angemessene Maßnahmen zur Wahrung der Rechte und Freiheiten sowie der berechtigten Interessen der betroffenen Person enthalten oder (3) mit ausdrücklicher Einwilligung der betroffenen Person erfolgt.',
      ),
      Text(
        'Ist die Entscheidung (1) für den Abschluss oder die Erfüllung eines Vertrags zwischen der betroffenen Person und dem Verantwortlichen erforderlich oder (2) erfolgt sie mit ausdrücklicher Einwilligung der betroffenen Person, trifft die Raumunikate Ina Kaiser angemessene Maßnahmen, um die Rechte und Freiheiten sowie die berechtigten Interessen der betroffenen Person zu wahren, wozu mindestens das Recht auf Erwirkung des Eingreifens einer Person seitens des Verantwortlichen, auf Darlegung des eigenen Standpunkts und auf Anfechtung der Entscheidung gehört.',
      ),
      Text(
        'Möchte die betroffene Person Rechte mit Bezug auf automatisierte Entscheidungen geltend machen, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden.',
      ),
      Text(
        'i)    Recht auf Widerruf einer datenschutzrechtlichen Einwilligung',
      ),
      Text(
        'Jede von der Verarbeitung personenbezogener Daten betroffene Person hat das vom Europäischen Richtlinien- und Verordnungsgeber gewährte Recht, eine Einwilligung zur Verarbeitung personenbezogener Daten jederzeit zu widerrufen.',
      ),
      Text(
        'Möchte die betroffene Person ihr Recht auf Widerruf einer Einwilligung geltend machen, kann sie sich hierzu jederzeit an einen Mitarbeiter des für die Verarbeitung Verantwortlichen wenden.',
      ),
      newLine,
      Text('9. Datenschutzbestimmungen zu Einsatz und Verwendung von Facebook'),
      Text(
        'Der für die Verarbeitung Verantwortliche hat auf dieser Internetseite Komponenten des Unternehmens Facebook integriert. Facebook ist ein soziales Netzwerk.',
      ),
      newLine,
      Text(
        'Ein soziales Netzwerk ist ein im Internet betriebener sozialer Treffpunkt, eine Online-Gemeinschaft, die es den Nutzern in der Regel ermöglicht, untereinander zu kommunizieren und im virtuellen Raum zu interagieren. Ein soziales Netzwerk kann als Plattform zum Austausch von Meinungen und Erfahrungen dienen oder ermöglicht es der Internetgemeinschaft, persönliche oder unternehmensbezogene Informationen bereitzustellen. Facebook ermöglicht den Nutzern des sozialen Netzwerkes unter anderem die Erstellung von privaten Profilen, den Upload von Fotos und eine Vernetzung über Freundschaftsanfragen.',
      ),
      newLine,
      Text(
        'Betreibergesellschaft von Facebook ist die Facebook, Inc., 1 Hacker Way, Menlo Park, CA 94025, USA. Für die Verarbeitung personenbezogener Daten Verantwortlicher ist, wenn eine betroffene Person außerhalb der USA oder Kanada lebt, die Facebook Ireland Ltd., 4 Grand Canal Square, Grand Canal Harbour, Dublin 2, Ireland.',
      ),
      Text(
        'Durch jeden Aufruf einer der Einzelseiten dieser Internetseite, die durch den für die Verarbeitung Verantwortlichen betrieben wird und auf welcher eine Facebook-Komponente (Facebook-Plug-In) integriert wurde, wird der Internetbrowser auf dem informationstechnologischen System der betroffenen Person automatisch durch die jeweilige Facebook-Komponente veranlasst, eine Darstellung der entsprechenden Facebook-Komponente von Facebook herunterzuladen. Eine Gesamtübersicht über alle Facebook-Plug-Ins kann unter https://developers.facebook.com/docs/plugins/?locale=de_DE abgerufen werden. Im Rahmen dieses technischen Verfahrens erhält Facebook Kenntnis darüber, welche konkrete Unterseite unserer Internetseite durch die betroffene Person besucht wird.',
      ),
      Text(
        'Sofern die betroffene Person gleichzeitig bei Facebook eingeloggt ist, erkennt Facebook mit jedem Aufruf unserer Internetseite durch die betroffene Person und während der gesamten Dauer des jeweiligen Aufenthaltes auf unserer Internetseite, welche konkrete Unterseite unserer Internetseite die betroffene Person besucht. Diese Informationen werden durch die Facebook-Komponente gesammelt und durch Facebook dem jeweiligen Facebook-Account der betroffenen Person zugeordnet. Betätigt die betroffene Person einen der auf unserer Internetseite integrierten Facebook-Buttons, beispielsweise den "Gefällt mir"-Button, oder gibt die betroffene Person einen Kommentar ab, ordnet Facebook diese Information dem persönlichen Facebook-Benutzerkonto der betroffenen Person zu und speichert diese personenbezogenen Daten.',
      ),
      Text(
        'Facebook erhält über die Facebook-Komponente immer dann eine Information darüber, dass die betroffene Person unsere Internetseite besucht hat, wenn die betroffene Person zum Zeitpunkt des Aufrufs unserer Internetseite gleichzeitig bei Facebook eingeloggt ist; dies findet unabhängig davon statt, ob die betroffene Person die Facebook-Komponente anklickt oder nicht. Ist eine derartige Übermittlung dieser Informationen an Facebook von der betroffenen Person nicht gewollt, kann diese die Übermittlung dadurch verhindern, dass sie sich vor einem Aufruf unserer Internetseite aus ihrem Facebook-Account ausloggt.',
      ),
      RichTextSection(
        children: [
          InlineText(
            'Die von Facebook veröffentlichte Datenrichtlinie, die unter ',
          ),
          InlineText(
            'https://de-de.facebook.com/privacy/policy',
            link: 'https://de-de.facebook.com/privacy/policy/',
          ),
          InlineText(
            ' abrufbar ist, gibt Aufschluss über die Erhebung, Verarbeitung und Nutzung personenbezogener Daten durch Facebook. Ferner wird dort erläutert, welche Einstellungsmöglichkeiten Facebook zum Schutz der Privatsphäre der betroffenen Person bietet. Zudem sind unterschiedliche Applikationen erhältlich, die es ermöglichen, eine Datenübermittlung an Facebook zu unterdrücken. Solche Applikationen können durch die betroffene Person genutzt werden, um eine Datenübermittlung an Facebook zu unterdrücken.',
          ),
        ],
      ),
      newLine,
      Text(
        '10. Datenschutzbestimmungen zu Einsatz und Verwendung von Instagram',
      ),
      Text(
        'Der für die Verarbeitung Verantwortliche hat auf dieser Internetseite Komponenten des Dienstes Instagram integriert. Instagram ist ein Dienst, der als audiovisuelle Plattform zu qualifizieren ist und den Nutzern das Teilen von Fotos und Videos und zudem eine Weiterverbreitung solcher Daten in anderen sozialen Netzwerken ermöglicht.',
      ),
      newLine,
      Text(
        'Betreibergesellschaft der Dienste von Instagram ist die Facebook Ireland Ltd., 4 Grand Canal Square, Grand Canal Harbour, Dublin 2 Ireland.',
      ),
      Text(
        'Durch jeden Aufruf einer der Einzelseiten dieser Internetseite, die durch den für die Verarbeitung Verantwortlichen betrieben wird und auf welcher eine Instagram-Komponente (Insta-Button) integriert wurde, wird der Internetbrowser auf dem informationstechnologischen System der betroffenen Person automatisch durch die jeweilige Instagram-Komponente veranlasst, eine Darstellung der entsprechenden Komponente von Instagram herunterzuladen. Im Rahmen dieses technischen Verfahrens erhält Instagram Kenntnis darüber, welche konkrete Unterseite unserer Internetseite durch die betroffene Person besucht wird.',
      ),
      newLine,
      Text(
        'Sofern die betroffene Person gleichzeitig bei Instagram eingeloggt ist, erkennt Instagram mit jedem Aufruf unserer Internetseite durch die betroffene Person und während der gesamten Dauer des jeweiligen Aufenthaltes auf unserer Internetseite, welche konkrete Unterseite die betroffene Person besucht. Diese Informationen werden durch die Instagram-Komponente gesammelt und durch Instagram dem jeweiligen Instagram-Account der betroffenen Person zugeordnet. Betätigt die betroffene Person einen der auf unserer Internetseite integrierten Instagram-Buttons, werden die damit übertragenen Daten und Informationen dem persönlichen Instagram-Benutzerkonto der betroffenen Person zugeordnet und von Instagram gespeichert und verarbeitet.',
      ),
      Text(
        'Instagram erhält über die Instagram-Komponente immer dann eine Information darüber, dass die betroffene Person unsere Internetseite besucht hat, wenn die betroffene Person zum Zeitpunkt des Aufrufs unserer Internetseite gleichzeitig bei Instagram eingeloggt ist; dies findet unabhängig davon statt, ob die betroffene Person die Instagram-Komponente anklickt oder nicht. Ist eine derartige Übermittlung dieser Informationen an Instagram von der betroffenen Person nicht gewollt, kann diese die Übermittlung dadurch verhindern, dass sie sich vor einem Aufruf unserer Internetseite aus ihrem Instagram-Account ausloggt.',
      ),
      newLine,
      RichTextSection(
        children: [
          InlineText(
            'Weitere Informationen und die geltenden Datenschutzbestimmungen von Instagram können unter ',
          ),
          InlineText(
            'https://help.instagram.com/155833707900388',
            link: 'https://help.instagram.com/155833707900388',
          ),
          InlineText(' und '),
          InlineText(
            'https://privacycenter.instagram.com/policy/',
            link: 'https://privacycenter.instagram.com/policy//',
          ),
          InlineText(' abgerufen werden.'),
        ],
      ),
      newLine,
      Text(
        '11. Zahlungsart: Datenschutzbestimmungen zu PayPal als Zahlungsart',
      ),
      Text(
        'Der für die Verarbeitung Verantwortliche hat auf dieser Internetseite Komponenten von PayPal integriert. PayPal ist ein Online-Zahlungsdienstleister. Zahlungen werden über sogenannte PayPal-Konten abgewickelt, die virtuelle Privat- oder Geschäftskonten darstellen. Zudem besteht bei PayPal die Möglichkeit, virtuelle Zahlungen über Kreditkarten abzuwickeln, wenn ein Nutzer kein PayPal-Konto unterhält. Ein PayPal-Konto wird über eine E-Mail-Adresse geführt, weshalb es keine klassische Kontonummer gibt. PayPal ermöglicht es, Online-Zahlungen an Dritte auszulösen oder auch Zahlungen zu empfangen. PayPal übernimmt ferner Treuhänderfunktionen und bietet Käuferschutzdienste an.',
      ),
      newLine,
      Text(
        'Die Europäische Betreibergesellschaft von PayPal ist die PayPal (Europe) S.à.r.l. et Cie, S.C.A., 22-24 Boulevard Royal L-2449, Luxemburg.',
      ),
      newLine,
      Text(
        'Wählt die betroffene Person während des Bestellvorgangs in unserem Online-Shop als Zahlungsmöglichkeit "PayPal" aus, werden automatisiert Daten der betroffenen Person an PayPal übermittelt. Mit der Auswahl dieser Zahlungsoption willigt die betroffene Person in die zur Zahlungsabwicklung erforderliche Übermittlung personenbezogener Daten ein.',
      ),
      newLine,
      Text(
        'Bei den an PayPal übermittelten personenbezogenen Daten handelt es sich in der Regel um Vorname, Nachname, Adresse, Email-Adresse, IP-Adresse, Telefonnummer, Mobiltelefonnummer oder andere Daten, die zur Zahlungsabwicklung notwendig sind. Zur Abwicklung des Kaufvertrages notwendig sind auch solche personenbezogenen Daten, die im Zusammenhang mit der jeweiligen Bestellung stehen.',
      ),
      newLine,
      Text(
        'Die Übermittlung der Daten bezweckt die Zahlungsabwicklung und die Betrugsprävention. Der für die Verarbeitung Verantwortliche wird PayPal personenbezogene Daten insbesondere dann übermitteln, wenn ein berechtigtes Interesse für die Übermittlung gegeben ist. Die zwischen PayPal und dem für die Verarbeitung Verantwortlichen ausgetauschten personenbezogenen Daten werden von PayPal unter Umständen an Wirtschaftsauskunfteien übermittelt. Diese Übermittlung bezweckt die Identitäts- und Bonitätsprüfung.',
      ),
      newLine,
      Text(
        'PayPal gibt die personenbezogenen Daten gegebenenfalls an verbundene Unternehmen und Leistungserbringer oder Subunternehmer weiter, soweit dies zur Erfüllung der vertraglichen Verpflichtungen erforderlich ist oder die Daten im Auftrag verarbeitet werden sollen.',
      ),
      newLine,
      Text(
        'Die betroffene Person hat die Möglichkeit, die Einwilligung zum Umgang mit personenbezogenen Daten jederzeit gegenüber PayPal zu widerrufen. Ein Widerruf wirkt sich nicht auf personenbezogene Daten aus, die zwingend zur (vertragsgemäßen) Zahlungsabwicklung verarbeitet, genutzt oder übermittelt werden müssen.',
      ),
      newLine,
      Text(
        'Die geltenden Datenschutzbestimmungen von PayPal können unter https://www.paypal.com/de/webapps/mpp/ua/privacy-full abgerufen werden.',
      ),
      newLine,
      Text('12. Rechtsgrundlage der Verarbeitung'),
      Text(
        'Art. 6 I lit. a DS-GVO dient unserem Unternehmen als Rechtsgrundlage für Verarbeitungsvorgänge, bei denen wir eine Einwilligung für einen bestimmten Verarbeitungszweck einholen. Ist die Verarbeitung personenbezogener Daten zur Erfüllung eines Vertrags, dessen Vertragspartei die betroffene Person ist, erforderlich, wie dies beispielsweise bei Verarbeitungsvorgängen der Fall ist, die für eine Lieferung von Waren oder die Erbringung einer sonstigen Leistung oder Gegenleistung notwendig sind, so beruht die Verarbeitung auf Art. 6 I lit. b DS-GVO. Gleiches gilt für solche Verarbeitungsvorgänge die zur Durchführung vorvertraglicher Maßnahmen erforderlich sind, etwa in Fällen von Anfragen zur unseren Produkten oder Leistungen. Unterliegt unser Unternehmen einer rechtlichen Verpflichtung durch welche eine Verarbeitung von personenbezogenen Daten erforderlich wird, wie beispielsweise zur Erfüllung steuerlicher Pflichten, so basiert die Verarbeitung auf Art. 6 I lit. c DS-GVO. In seltenen Fällen könnte die Verarbeitung von personenbezogenen Daten erforderlich werden, um lebenswichtige Interessen der betroffenen Person oder einer anderen natürlichen Person zu schützen. Dies wäre beispielsweise der Fall, wenn ein Besucher in unserem Betrieb verletzt werden würde und daraufhin sein Name, sein Alter, seine Krankenkassendaten oder sonstige lebenswichtige Informationen an einen Arzt, ein Krankenhaus oder sonstige Dritte weitergegeben werden müssten. Dann würde die Verarbeitung auf Art. 6 I lit. d DS-GVO beruhen. Letztlich könnten Verarbeitungsvorgänge auf Art. 6 I lit. f DS-GVO beruhen. Auf dieser Rechtsgrundlage basieren Verarbeitungsvorgänge, die von keiner der vorgenannten Rechtsgrundlagen erfasst werden, wenn die Verarbeitung zur Wahrung eines berechtigten Interesses unseres Unternehmens oder eines Dritten erforderlich ist, sofern die Interessen, Grundrechte und Grundfreiheiten des Betroffenen nicht überwiegen. Solche Verarbeitungsvorgänge sind uns insbesondere deshalb gestattet, weil sie durch den Europäischen Gesetzgeber besonders erwähnt wurden. Er vertrat insoweit die Auffassung, dass ein berechtigtes Interesse anzunehmen sein könnte, wenn die betroffene Person ein Kunde des Verantwortlichen ist (Erwägungsgrund 47 Satz 2 DS-GVO).',
      ),
      newLine,
      Text(
        '13. Berechtigte Interessen an der Verarbeitung, die von dem Verantwortlichen oder einem Dritten verfolgt werden',
      ),
      Text(
        'Basiert die Verarbeitung personenbezogener Daten auf Artikel 6 I lit. f DS-GVO ist unser berechtigtes Interesse die Durchführung unserer Geschäftstätigkeit zugunsten des Wohlergehens all unserer Mitarbeiter und unserer Anteilseigner.',
      ),
      newLine,
      Text('14. Dauer, für die die personenbezogenen Daten gespeichert werden'),
      Text(
        'Das Kriterium für die Dauer der Speicherung von personenbezogenen Daten ist die jeweilige gesetzliche Aufbewahrungsfrist. Nach Ablauf der Frist werden die entsprechenden Daten routinemäßig gelöscht, sofern sie nicht mehr zur Vertragserfüllung oder Vertragsanbahnung erforderlich sind.',
      ),
      newLine,
      Text(
        '15. Gesetzliche oder vertragliche Vorschriften zur Bereitstellung der personenbezogenen Daten; Erforderlichkeit für den Vertragsabschluss; Verpflichtung der betroffenen Person, die personenbezogenen Daten bereitzustellen; mögliche Folgen der Nichtbereitstellung',
      ),
      Text(
        'Wir klären Sie darüber auf, dass die Bereitstellung personenbezogener Daten zum Teil gesetzlich vorgeschrieben ist (z.B. Steuervorschriften) oder sich auch aus vertraglichen Regelungen (z.B. Angaben zum Vertragspartner) ergeben kann. Mitunter kann es zu einem Vertragsschluss erforderlich sein, dass eine betroffene Person uns personenbezogene Daten zur Verfügung stellt, die in der Folge durch uns verarbeitet werden müssen. Die betroffene Person ist beispielsweise verpflichtet uns personenbezogene Daten bereitzustellen, wenn unser Unternehmen mit ihr einen Vertrag abschließt. Eine Nichtbereitstellung der personenbezogenen Daten hätte zur Folge, dass der Vertrag mit dem Betroffenen nicht geschlossen werden könnte. Vor einer Bereitstellung personenbezogener Daten durch den Betroffenen muss sich der Betroffene an einen unserer Mitarbeiter wenden. Unser Mitarbeiter klärt den Betroffenen einzelfallbezogen darüber auf, ob die Bereitstellung der personenbezogenen Daten gesetzlich oder vertraglich vorgeschrieben oder für den Vertragsabschluss erforderlich ist, ob eine Verpflichtung besteht, die personenbezogenen Daten bereitzustellen, und welche Folgen die Nichtbereitstellung der personenbezogenen Daten hätte.',
      ),
      newLine,
      Text('16. Bestehen einer automatisierten Entscheidungsfindung'),
      Text(
        'Als verantwortungsbewusstes Unternehmen verzichten wir auf eine automatische Entscheidungsfindung oder ein Profiling.',
      ),
      newLine,
      RichTextSection(
        children: [
          InlineText(
            'Diese Datenschutzerklärung wurde durch den Datenschutzerklärungs-Generator der DGD Deutsche Gesellschaft für Datenschutz GmbH, die als ',
          ),
          InlineText(
            'Externer Datenschutzbeauftragter Regensburg',
            link:
                'https://dg-datenschutz.de/datenschutz-dienstleistungen/externer-datenschutzbeauftragter/',
          ),
          InlineText(' tätig ist, in Kooperation mit dem '),
          InlineText(
            'Kölner IT- und Datenschutz Anwalt Christian Solmecke',
            link: 'https://www.wbs-law.de/it-recht/datenschutzrecht/',
          ),
          InlineText(' erstellt.'),
        ],
      ),
    ],
  );
}
