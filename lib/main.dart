import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/home_page2.dart';
import 'package:flutter_tutorial/screens/providers/provider_part3.dart';
import 'package:flutter_tutorial/screens/providers/provider_part4.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MultiProvider Example',
      theme: theme.themeData,
      home: const HomePage2(),
    );
  }
}
