import 'package:flutter/material.dart';
import 'package:stop_watch_flutter/ui/elapsed_time_text_basic.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  @override
  Widget build(BuildContext context) {
    return const ElapsedTimeTextBasic(
      elapsed: Duration(seconds: 5),
    );
  }
}
