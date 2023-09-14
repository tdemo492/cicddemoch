import 'package:cicddemoch/controllers/home_controller.dart';

import '../core/base_imports.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key, required this.title});
  final String title;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {



  final _controller = Get.find<HomeController>();

  void _incrementCounter() {
    setState(() {
      _controller.counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${_controller.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            GestureDetector(
              onTap: (){
                _controller.refresh();

              },
              child: Container(
                height: 40,
                width: 60,
                color: Colors.cyan,
                child: Center(child: Text("remove", style: TextStyle(color: Colors.white),)),
              ),
            )
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
