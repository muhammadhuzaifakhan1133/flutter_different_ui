import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';
import 'package:test2/models/package.dart';
import 'package:test2/ui/package/package_viewmodel.dart';
import 'package:test2/ui/package/widgets/package_card.dart';
import 'package:test2/utils/extensions.dart';
import 'package:test2/widgets/app_bar.dart';
import 'package:test2/widgets/custom_drawer.dart';

class PackageView extends StatelessWidget {
  const PackageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => PackageViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            appBar: customAppBar(title: "Package"),
            drawer: const CustomDrawer(),
            body: ListView.separated(
              itemCount: viewModel.packages.length,
              padding: const EdgeInsets.all(10),
              separatorBuilder: (context, index) {
                return const SizedBox(height: 15);
              },
              itemBuilder: (context, index) {
                return PackageCard(package: viewModel.packages[index]);
              },
            ));
      },
    );
  }
}
