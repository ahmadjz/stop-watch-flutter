import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stop_watch_flutter/ui/elapsed_time_text.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  late DateTime _initialTime;
  Duration _elapsed = Duration.zero;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _initialTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      print("hi");
      print(timer.tick);
      final now = DateTime.now();
      setState(() {
        _elapsed = now.difference(_initialTime);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeText(
      elapsed: _elapsed,
    );
  }
}
