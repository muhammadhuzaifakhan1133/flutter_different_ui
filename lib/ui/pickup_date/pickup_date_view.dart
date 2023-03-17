import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:test2/ui/pickup_date/pickup_date_viewmodel.dart';
import 'package:test2/ui/pickup_date/widgets/button.dart';
import 'package:test2/ui/pickup_date/widgets/day_card.dart';
import 'package:test2/ui/pickup_date/widgets/dropdown.dart';
import 'package:test2/ui/pickup_date/widgets/slot_card.dart';
import 'package:test2/utils/color_constants.dart';
import 'package:test2/utils/extensions.dart';
import 'package:test2/widgets/app_bar.dart';
import 'package:test2/widgets/custom_drawer.dart';

class PickupDateView extends StatelessWidget {
  const PickupDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => PickupDateViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
            appBar: customAppBar(title: "Pickup Date"),
            drawer: const CustomDrawer(),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text(
                          "When would you like your pickup?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.8)),
                        )),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            onPressed: () {
                              DatePicker.showDatePicker(context);
                            },
                            icon: Icon(Icons.calendar_month,
                                color: ColorConstants.blue),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 90,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.04),
                        itemCount: viewModel.dates.length,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04);
                        },
                        itemBuilder: (context, index) {
                          return DayCard(
                            topColor: viewModel.dates[index].topColor,
                            weekDay: viewModel.dates[index].weekDay,
                            date: viewModel.dates[index].date,
                            dayName: viewModel.dates[index].dayName,
                            weekDayColor: viewModel.dates[index].weekDayColor,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: context.height * 0.04),
                    Text(
                      "Available time slots",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8), fontSize: 15),
                    ),
                    SizedBox(height: context.height * 0.04),
                    GridView.builder(
                      itemCount: viewModel.slots.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.04),
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio:
                              context.height / context.width * 1.5,
                          crossAxisSpacing: context.width * 0.04,
                          mainAxisSpacing: context.height * 0.03),
                      itemBuilder: (context, index) {
                        return SlotCard(
                          viewModel: viewModel,
                          index: index,
                        );
                      },
                    ),
                    SizedBox(height: context.height * 0.05),
                    Container(
                      width: context.width * 0.85,
                      padding: EdgeInsets.symmetric(
                          horizontal: context.width * 0.08),
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Repeat Pickup"),
                          Switch(
                              value: viewModel.isRepeat,
                              onChanged: (value) {
                                viewModel.isRepeat = value;
                                viewModel.notifyListeners();
                              })
                        ],
                      ),
                    ),
                    SizedBox(height: context.height * 0.025),
                    Row(
                      children: [
                        SizedBox(
                          width: context.width * 0.1,
                        ),
                        Text("How often Repeat?",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 15)),
                      ],
                    ),
                    DropDown(
                      value: viewModel.repeatValue,
                      items: viewModel.repeatOptions,
                      onChanged: (value) {
                        viewModel.repeatValue = value as String;
                        viewModel.notifyListeners();
                      },
                    ),
                    SizedBox(height: context.height * 0.025),
                    Row(
                      children: [
                        SizedBox(
                          width: context.width * 0.1,
                        ),
                        Text("How many times?",
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: 15)),
                      ],
                    ),
                    DropDown(
                      value: viewModel.noOfTimesValue,
                      items: viewModel.noOfTimesOptions,
                      onChanged: (value) {
                        viewModel.noOfTimesValue = value as String;
                        viewModel.notifyListeners();
                      },
                    ),
                    SizedBox(height: context.height * 0.05),
                    const Button(title: "Continue")
                  ],
                ),
              ),
            ));
      },
    );
  }
}
