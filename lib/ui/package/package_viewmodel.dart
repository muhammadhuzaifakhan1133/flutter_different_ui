import 'package:stacked/stacked.dart';
import 'package:test2/models/package.dart';
import 'package:test2/models/package_image.dart';

class PackageViewModel extends BaseViewModel {
  List<Package> packages = [
    Package(
        bigImage: "assets/images/shirt.png",
        image1: PackageImage(title: "Wash", path: "assets/images/wash.png"),
        image2: PackageImage(title: "Shirt", path: "assets/images/shirt.png"),
        image3: PackageImage(title: "Dry", path: "assets/images/iron.png"),
        title: "Shirt Jeans slip Dry and cleaning",
        subtitle: "You will get 10% off buy this package",
        price: "\$40"),
    Package(
        bigImage: "assets/images/shirt.png",
        image1: PackageImage(title: "Wash", path: "assets/images/wash.png"),
        image2: PackageImage(title: "Shirt", path: "assets/images/shirt.png"),
        image3: PackageImage(title: "Dry", path: "assets/images/iron.png"),
        title: "5 T-shirts Dry and cleaning",
        subtitle: "You will get 10% off buy this package",
        price: "\$60"),
    Package(
        bigImage: "assets/images/shirt.png",
        image1: PackageImage(title: "Wash", path: "assets/images/wash.png"),
        image2: PackageImage(title: "Shirt", path: "assets/images/shirt.png"),
        image3: PackageImage(title: "Dry", path: "assets/images/iron.png"),
        title: "2 Linen Dry and cleaning",
        subtitle: "You will get 10% off buy this package",
        price: "\$40"),
    Package(
        bigImage: "assets/images/shirt.png",
        image1: PackageImage(title: "Wash", path: "assets/images/wash.png"),
        image2: PackageImage(title: "Shirt", path: "assets/images/shirt.png"),
        image3: PackageImage(title: "Dry", path: "assets/images/iron.png"),
        title: "5 Jeans Dry and cleaning",
        subtitle: "You will get 10% off buy this package",
        price: "\$40"),
    Package(
        bigImage: "assets/images/shirt.png",
        image1: PackageImage(title: "Wash", path: "assets/images/wash.png"),
        image2: PackageImage(title: "Shirt", path: "assets/images/shirt.png"),
        image3: PackageImage(title: "Dry", path: "assets/images/iron.png"),
        title: "2 Unifrom Dry and cleaning",
        subtitle: "You will get 10% off buy this package",
        price: "\$40"),
  ];
}
