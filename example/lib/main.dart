import 'package:awesome_dialog/easy_animated_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fancy Dialog Example',
        theme: ThemeData.dark(),
        initialRoute: '/',
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Dialog Example'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                EasyAnimatedButton(buttonText: 'Press',onFailure: () async {},
                  onSuccessful: () async {},
                  onButtonPressed: ()async {return true;},)
              ]
            ),
          ),
        ),
      ),
    );
  }
}
