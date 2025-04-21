import 'package:meta/meta.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_routes.dart';

const //
blogDateLilliGrewe = '20.02.2023',
    blogPathLilliGrewe = 'raumfuerunikate-lilli-grewe',
    blogNameLilliGrewe = '#rumfuerunikate: Lilli Grewe';

const //
blogDateKerstinDiehl = '15.07.2023',
    blogPathKerstinDiehl = 'raumfuerunikate-kerstin-diehl',
    blogNameKerstinDiehl = '#rumfuerunikate: Kerstin Diehl';

final blogDataEntries = [
  const BlogDataEntry(
    date: blogDateLilliGrewe,
    title: blogNameLilliGrewe,
    description: '''
„Ich hänge nicht an Dingen.“ WOW! Diese Aussage beinhaltet so viel Freiraum. Erfolgreich und inspirierend Lilli Grewe als Premierengast dieser Interviewreihe #raumfuerunikate. Du erfährst wie die Influencerin mit dem Instagram - Erfolgsaccount @kitchcanmakeyouricht ein offenes Loft in Bielefeld in ein gemütliches Familienzuhause verwandelt und was sie antreibt Interiorbegeisterter zu vernetzen.''',
    categories: ['Homestory', 'Wohntrends', 'Rauminspiration'],
    image: Images.blog0Cover,
    route: Routes.blogLilliGrewe,
  ),
  const BlogDataEntry(
    date: blogDateKerstinDiehl,
    title: blogNameKerstinDiehl,
    description: '''
„If it’s not a hell yeah, it’s a no!“ Mit dieser Entscheidungshilfe kreiert sich Kerstin Diehl ihre berliner Traumwohnung. Wie die Interiorenthusiastin mit dem Instagram - Account @kerseylovescolor ihren persönlichen Stil gefunden hat, efährst du in diesem Wohlfühl-Interview.''',
    categories: ['Homestory', 'Wohntrends', 'Rauminspiration'],
    image: Images.blog1Cover,
    route: Routes.blogKerstinDiehl,
  ),
];

@immutable
class BlogDataEntry {
  const BlogDataEntry({
    required this.date,
    required this.title,
    required this.description,
    required this.image,
    required this.categories,
    required this.route,
  });

  final String date;
  final String title;
  final String description;
  final Iterable<String> categories;
  final String image;
  final String route;
}
