import 'package:cicddemoch/core/bindings.dart';

import '../screens/home_screen.dart';
import '../screens/second_screen.dart';
import 'base_imports.dart';

final getPages = [
  GetPage(
    name: AppRoutes.homeScreen,
    page: () => const HomeScreen(title: 'Flutter Demo Home Page'),
    binding: HomeScreenBinding()
  ),

  GetPage(
    name: AppRoutes.secondScreen,
    page: () => const SecondScreen(title: 'Second Screen'),
  ),
];
