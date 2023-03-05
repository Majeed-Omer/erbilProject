import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/presentation/pages/wrapper_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: const MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return WrapperPage();
  }
}
