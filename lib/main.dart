import 'package:flutter/material.dart';
import 'package:flutter_insta/flutter_insta.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/zenitsu.jpg"),
            ),
            Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/Ak.jpg"),
            ),
            Container(
              height: 250,
              width: 250,
              child: Image.asset("assets/DSEar.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
