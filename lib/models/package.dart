import 'package:test2/models/package_image.dart';

class Package {
  final String title;
  final String subtitle;
  final String price;
  final String bigImage;
  final PackageImage image1;
  final PackageImage image2;
  final PackageImage image3;

  Package({
    required this.bigImage,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}
