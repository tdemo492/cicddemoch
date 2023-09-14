import 'package:get/get_instance/src/bindings_interface.dart';
import '../controllers/home_controller.dart';
import 'base_imports.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
