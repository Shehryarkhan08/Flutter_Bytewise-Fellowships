import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/count_provider.dart';
// import 'package:flutter_application_1/provider.dart';
import 'package:flutter_application_1/screen/count_example.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        home: CountExample(),
      ),
    );
  }
}
