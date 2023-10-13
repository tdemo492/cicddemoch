import 'package:cicddemoch/controllers/home_controller.dart';

import '../core/base_imports.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = Get.find<HomeController>();

  void _incrementCounter() {
    _controller.counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button many  times:',
            ),
            Obx(() {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.secondScreen);
                },
                child: Text(
                  '${_controller.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
