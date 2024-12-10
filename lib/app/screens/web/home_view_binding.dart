import 'package:get/get.dart';
import 'package:twn_square/app/screens/web/home_view_controller.dart';

class HomeViewBindingWeb extends Bindings {
  HomeViewBindingWeb();

  @override
  void dependencies() {
    Get.lazyPut<HomeViewControllerWeb>(
      () => HomeViewControllerWeb(),
    );
  }
}
