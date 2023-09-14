import 'package:cicddemoch/core/base_imports.dart';

class HomeController extends GetxController{
  RxInt counter = 0.obs;

  @override
  void onInit() {
    testIsolates();
    super.onInit();
  }

  // TODO: implement onInit
  testIsolates() async {

    await Future.delayed(const Duration(seconds: 5)).then((value){
      counter+5;
    });

    await Future.delayed(const Duration(seconds: 10));
    counter+10;

    await Future.delayed(const Duration(seconds: 12));
    counter+20;


  }


}