import 'package:flutter/material.dart';
import 'package:medical_consulttancy/controller/preference_controller.dart';
import 'package:medical_consulttancy/view/home_page.dart';
import 'package:medical_consulttancy/view/tab_bar.dart';
import 'package:medical_consulttancy/view/user_type_selection.dart';
import 'package:medical_consulttancy/controller/preference_controller.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceController.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PreferenceController.getBoolean(PreferenceController.prefKeyIsLoggedIn)==true ? TabBarDemo() :const UserSelection(),
    );
  }
}
