import 'package:flutter/material.dart';

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
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              feedBack: false,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                if (clickCounter == 0) return;
                setState(() {
                  clickCounter--;
                });
              },
              feedBack: false,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              feedBack: true,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final bool feedBack;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
    required this.feedBack,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon),
      enableFeedback: feedBack,
    );
  }
}
