import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light()
                .copyWith(primary: Color.fromARGB(255, 91, 171, 237))),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //FlutterInsta flutterInsta = FlutterInsta();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // await flutterInsta.getProfileData("shenzrugs");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shenzrugs'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.0, bottom: 5.0),
              child: Container(
                color: Colors.blue,
                height: 50,
                child: Text('Buy Rugs Now!'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset("assets/Ak.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset("assets/DSEar.jpg"),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset("assets/RS.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 250,
                        width: 250,
                        child: Image.asset("assets/DSEar.jpg"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(onPressed: onPressed() {
              print("Ordered");
            }, child: Text("Order now!")),
          ],
        ),
      ),
    );
  }
}
