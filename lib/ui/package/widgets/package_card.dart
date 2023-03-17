import 'package:flutter/material.dart';
import 'package:test2/models/package.dart';
import 'package:test2/utils/extensions.dart';

class PackageCard extends StatelessWidget {
  final Package package;
  const PackageCard({
    super.key,
    required this.package,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.9,
      height: context.height * 0.24,
      child: Card(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                  decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(package.bigImage), fit: BoxFit.fill),
              )),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: context.width * 0.4,
                            child: Text(package.title,
                                style: const TextStyle(color: Colors.blue))),
                        const Spacer(),
                        Text("(${package.price})",
                            style: const TextStyle(color: Colors.blue))
                      ],
                    ),
                    Text(package.subtitle,
                        style: const TextStyle(color: Colors.blue)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: context.height * 0.08,
                              width: context.width * 0.13,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(package.image1.path)),
                              ),
                            ),
                            Text(package.image1.title,
                                style: const TextStyle(color: Colors.blue))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: context.height * 0.08,
                              width: context.width * 0.13,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(package.image2.path)),
                              ),
                            ),
                            Text(package.image2.title,
                                style: const TextStyle(color: Colors.blue))
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: context.height * 0.08,
                              width: context.width * 0.13,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(package.image3.path)),
                              ),
                            ),
                            Text(package.image3.title,
                                style: const TextStyle(color: Colors.blue))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
