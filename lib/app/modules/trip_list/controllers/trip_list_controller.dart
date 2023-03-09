import 'package:eproject/app/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TripListController extends BaseController {
 var selectedDatefirt = DateTime.now().obs;
  var selectedDatelast = DateTime.now().obs;
  // late List<ChartData> data;
  // late TooltipBehavior tooltip;
  final count = 0.obs;
  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  firtchooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDatefirt.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(4000),
        helpText: 'Select DOB',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'DOB',
        fieldHintText: 'Month/Date/Year',
        selectableDayPredicate: disableDate);
    if (pickedDate != null && pickedDate != selectedDatefirt.value) {
      selectedDatefirt.value = pickedDate;
    }
  }

  lastchooseDate() async {
    DateTime? lastdate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDatelast.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(4000),
        helpText: 'Select DOB',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'DOB',
        fieldHintText: 'Month/Date/Year',
        selectableDayPredicate: disableDate);
    if (lastdate != null && lastdate != selectedDatelast.value) {
      selectedDatelast.value = lastdate;
    }
  }

  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 5))))) {
      return true;
    }
    return false;
  }
}

