import 'package:flutter/material.dart';

const studentName = 'محمد جعفری پور';
const studentId = '۴۰۱۱۰۵۷۹۷';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workshop 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      builder: (context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child!),
      home: const MyHomePage(title: 'ورکشاپ ۱ - $studentId'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _decrementCounter() {
    if (_counter == 0) return;

    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title, style: const TextStyle(fontSize: 18)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('شمارنده', style: TextStyle(fontSize: 20)),
                const SizedBox(height: 12),
                Text(
                  '$_counter',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: _counter.isEven ? Colors.green : Colors.red,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  studentName,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 8),
                const Text(
                  studentId,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 32),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 16,
                  runSpacing: 12,
                  children: [
                    FilledButton.icon(
                      onPressed: _resetCounter,
                      icon: const Icon(Icons.refresh),
                      label: const Text('Reset'),
                    ),
                    OutlinedButton.icon(
                      onPressed: _counter == 0 ? null : _decrementCounter,
                      icon: const Icon(Icons.remove),
                      label: const Text('Decrease'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
