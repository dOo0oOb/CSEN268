import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() => _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  int _count = 10;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_count > 0) {
          _count--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  void _resetTimer() {
    _timer.cancel();  // Stop the current timer
    setState(() {
      _count = 10;  // Reset count to initial value
    });
    _startTimer();  // Start the timer again
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSwitcher'),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'duration > timer',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 5000),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: Text(
                  '$_count',
                  key: ValueKey<int>(_count),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'non-unique key',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  '$_count',
                  key: const ValueKey<int>(0),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'unique key',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: Text(
                  '$_count',
                  key: ValueKey<int>(_count),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'unique key with curve',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(
                    scale: CurvedAnimation(
                      parent: animation,
                      curve: Curves.bounceInOut,
                    ),
                    child: child
                    );
                },
                child: Text(
                  '$_count',
                  key: ValueKey<int>(_count),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetTimer,
        tooltip: 'Reset Timer',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
