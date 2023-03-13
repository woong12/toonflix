/* import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 600;
  int totalSeconds = twentyFiveMinutes;
  bool isRunning = false;
  int totalPomodoros = 0;
  late Timer timer;

  void onThick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros = totalPomodoros + 1;
        isRunning = false;
        totalSeconds = twentyFiveMinutes;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onThick,
    );
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    setState(() {
      totalSeconds = twentyFiveMinutes;
      isRunning = false;
    });
    timer.cancel();
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().substring(2, 7);
    // return duration.toString().split('.').first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  fontSize: 89,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                    iconSize: 120,
                    color: Theme.of(context).cardColor,
                    onPressed: isRunning ? onPausePressed : onStartPressed,
                    icon: Icon(
                      isRunning
                          ? Icons.pause_circle_outline
                          : Icons.play_circle_outlined,
                    ),
                  ),
                ),
                Center(
                  child: IconButton(
                    iconSize: 120,
                    color: Theme.of(context).cardColor,
                    onPressed: isRunning ? onResetPressed : () {},
                    icon: const Icon(Icons.restart_alt_rounded),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodoros',
                          style: TextStyle(
                            fontSize: 20,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '$totalPomodoros',
                          style: TextStyle(
                            fontSize: 58,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 */