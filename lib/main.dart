
import 'package:empdir/provider/employee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EmployeeProvider>(
      create: (_) => EmployeeProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}


