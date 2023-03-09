import 'package:get/get.dart';

import '../modules/command_driver/bindings/command_driver_binding.dart';
import '../modules/command_driver/views/command_driver_view.dart';
import '../modules/containermonitoring/bindings/containermonitoring_binding.dart';
import '../modules/containermonitoring/views/containermonitoring_view.dart';
import '../modules/flight_details/bindings/flight_details_binding.dart';
import '../modules/flight_details/views/flight_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/maintabbar/bindings/maintabbar_binding.dart';
import '../modules/maintabbar/views/maintabbar_view.dart';
import '../modules/oder_details/bindings/oder_details_binding.dart';
import '../modules/oder_details/views/oder_details_view.dart';
import '../modules/received_oders/bindings/received_oders_binding.dart';
import '../modules/received_oders/views/received_oders_view.dart';
import '../modules/running_driver/bindings/running_driver_binding.dart';
import '../modules/running_driver/views/running_driver_view.dart';
import '../modules/startapp/bindings/startapp_binding.dart';
import '../modules/startapp/views/startapp_view.dart';
import '../modules/tab_driver/bindings/tab_driver_binding.dart';
import '../modules/tab_driver/views/tab_driver_view.dart';
import '../modules/trip_list/bindings/trip_list_binding.dart';
import '../modules/trip_list/views/trip_list_view.dart';
import '../modules/truckmonitoring/bindings/truckmonitoring_binding.dart';
import '../modules/truckmonitoring/views/truckmonitoring_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINTABBAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.STARTAPP,
      page: () => const StartappView(),
      binding: StartappBinding(),
    ),
    GetPage(
      name: _Paths.TRUCKMONITORING,
      page: () => const TruckmonitoringView(),
      binding: TruckmonitoringBinding(),
    ),
    GetPage(
      name: _Paths.CONTAINERMONITORING,
      page: () => const ContainermonitoringView(),
      binding: ContainermonitoringBinding(),
    ),
    GetPage(
      name: _Paths.MAINTABBAR,
      page: () => const MaintabbarView(),
      binding: MaintabbarBinding(),
    ),
    GetPage(
      name: _Paths.COMMAND_DRIVER,
      page: () => const CommandDriverView(),
      binding: CommandDriverBinding(),
    ),
    GetPage(
      name: _Paths.TAB_DRIVER,
      page: () => const TabDriverView(),
      binding: TabDriverBinding(),
    ),
    GetPage(
      name: _Paths.RECEIVED_ODERS,
      page: () => const ReceivedOdersView(),
      binding: ReceivedOdersBinding(),
    ),
    GetPage(
      name: _Paths.RUNNING_DRIVER,
      page: () => const RunningDriverView(),
      binding: RunningDriverBinding(),
    ),
    GetPage(
      name: _Paths.ODER_DETAILS,
      page: () => const OderDetailsView(),
      binding: OderDetailsBinding(),
    ),
    GetPage(
      name: _Paths.TRIP_LIST,
      page: () => const TripListView(),
      binding: TripListBinding(),
    ),
    GetPage(
      name: _Paths.FLIGHT_DETAILS,
      page: () => const FlightDetailsView(),
      binding: FlightDetailsBinding(),
    ),
  ];
}
