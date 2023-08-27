import 'package:meta/meta.dart';

@immutable
class ProductsSlideDataEntry {
  const ProductsSlideDataEntry(
    this.image,
    this.title,
    this.subtitle,
    this.price,
  );

  final String image;
  final String title;
  final String subtitle;
  final String price;
}
