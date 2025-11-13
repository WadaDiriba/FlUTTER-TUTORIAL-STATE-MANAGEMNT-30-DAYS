import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/providers/provider_part3.dart';
import 'package:flutter_tutorial/screens/providers/provider_part4.dart';
import 'package:provider/provider.dart';


class HomePage2 extends StatelessWidget {
  const HomePage2 ({super.key});

  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<CounterProvider>(context);

   
    final theme = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiProvider Example"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(theme.isDark ? Icons.dark_mode : Icons.light_mode),
            onPressed: () => context.read<ThemeProvider>().toggleTheme(),
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Count: ${counter.count}",
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: counter.increment,
            backgroundColor: Colors.green,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: counter.reset,
            backgroundColor: Colors.grey,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: counter.decrement,
            backgroundColor: Colors.red,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
