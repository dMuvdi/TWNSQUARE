import 'package:get/get.dart';
import 'package:twn_square/app/screens/mobile/screens/home_view_controller.dart';

class HomeViewBinding extends Bindings {
  HomeViewBinding();

  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(
      () => HomeViewController(),
    );
  }
}
