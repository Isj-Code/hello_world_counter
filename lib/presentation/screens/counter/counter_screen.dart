import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => {
              setState(() {
                clickCounter++;
              })
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () => {
              if (clickCounter > 0)
                {
                  setState(() {
                    clickCounter--;
                  })
                }
            },
            child: const Icon(Icons.exposure_minus_1_rounded),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () => {
              setState(() {
                clickCounter = 0;
              })
            },
            child: const Icon(Icons.exposure_zero),
          ),
        ],
      ),
    );
  }
}
