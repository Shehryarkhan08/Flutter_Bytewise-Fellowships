import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stringProvider = Provider<String>((ref) => 'Simple_provider_riverpod');
void main() {
  runApp(const MyApp());
}

//simple provider(read only)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
        child: MaterialApp(
      home: Home(),
    ));
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String data = ref.read<String>(stringProvider);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 350,
            ),
            Text(
              data,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
