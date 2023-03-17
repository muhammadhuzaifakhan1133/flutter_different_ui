import 'package:flutter/material.dart';
import 'package:test2/ui/pickup_date/pickup_date_viewmodel.dart';
import 'package:test2/utils/color_constants.dart';

class SlotCard extends StatelessWidget {
  final PickupDateViewModel viewModel;
  final int index;
  const SlotCard({
    super.key,
    required this.viewModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: viewModel.slots[index].isAvailable
            ? () {
                viewModel.slots[index].isSelected =
                    !viewModel.slots[index].isSelected;
                viewModel.notifyListeners();
              }
            : null,
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: viewModel.slots[index].isAvailable
                  ? viewModel.slots[index].isSelected
                      ? ColorConstants.blue
                      : ColorConstants.white
                  : Colors.grey,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "${viewModel.slots[index].from}-${viewModel.slots[index].to}",
              style: TextStyle(
                color: viewModel.slots[index].isAvailable
                    ? viewModel.slots[index].isSelected
                        ? ColorConstants.white
                        : Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ));
  }
}