import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterFunciontsScreen extends StatefulWidget {
  const CounterFunciontsScreen({super.key});

  @override
  State<CounterFunciontsScreen> createState() => _CounterFunciontsScreenState();
}

class _CounterFunciontsScreenState extends State<CounterFunciontsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Functions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              clickCounter <= 1 ? 'Click' : 'Clicks',
              style: const TextStyle(fontSize: 75),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 120),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(icon: Icons.plus_one),
            const SizedBox(
              width: 10,
            ),
            CustomButton(icon: Icons.exposure_minus_1),
            const SizedBox(
              width: 10,
            ),
            const CustomButton(icon: Icons.refresh_outlined),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
