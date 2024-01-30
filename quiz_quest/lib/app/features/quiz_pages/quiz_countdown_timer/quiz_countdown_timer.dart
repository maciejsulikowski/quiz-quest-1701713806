import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountDownTimer extends StatefulWidget {
  CountDownTimer({
    super.key,
    required this.duration,
    required this.controller,
    required this.updateIsTimeUp,
    this.isButtonDisabled = false,
  });

  final int duration;
  final CountDownController controller;
  bool isTimeUp = false;
  bool isButtonDisabled;
  final Function(bool) updateIsTimeUp;

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      // Countdown duration in Seconds.
      duration: widget.duration,

      // Countdown initial elapsed Duration in Seconds.
      initialDuration: 0,

      // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
      controller: widget.controller,

      // Width of the Countdown Widget.
      width: MediaQuery.of(context).size.width / 6,

      // Height of the Countdown Widget.
      height: MediaQuery.of(context).size.height / 6,

      // Ring Color for Countdown Widget.
      ringColor: Colors.white,

      // Ring Gradient for Countdown Widget.
      ringGradient: null,

      // Filling Color for Countdown Widget.
      fillColor: Colors.black,

      // Filling Gradient for Countdown Widget.
      fillGradient: null,

      // Background Color for Countdown Widget.
      backgroundColor: null,

      // Background Gradient for Countdown Widget.
      backgroundGradient: const LinearGradient(
        colors: [
          Color.fromRGBO(143, 165, 255, 1),
          Color.fromRGBO(10, 53, 132, 1),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),

      // Border Thickness of the Countdown Ring.
      strokeWidth: 15.0,

      // Begin and end contours with a flat edge and no extension.
      strokeCap: StrokeCap.round,

      // Text Style for Countdown Text.
      textStyle: const TextStyle(
        fontSize: 33.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),

      // Format for the Countdown Text.
      textFormat: CountdownTextFormat.S,

      // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
      isReverse: true,

      // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
      isReverseAnimation: true,

      // Handles visibility of the Countdown Text.
      isTimerTextShown: true,

      // Handles the timer start.
      autoStart: true,

      // This Callback will execute when the Countdown Starts.
      onStart: () {
        // Here, do whatever you want
        debugPrint('Countdown Started');
      },

      // This Callback will execute when the Countdown Ends.
      onComplete: () {
        setState(() {
          widget.isButtonDisabled = true;

          widget.updateIsTimeUp(true);
        });
        debugPrint('Countdown Ended');
      },

      // This Callback will execute when the Countdown Changes.
      onChange: (String timeStamp) {
        // Here, do whatever you want
        debugPrint('Countdown Changed $timeStamp');
      },

      /* 
      * Function to format the text.
      * Allows you to format the current duration to any String.
      * It also provides the default function in case you want to format specific moments
        as in reverse when reaching '0' show 'GO', and for the rest of the instances follow 
        the default behavior.
    */
      timeFormatterFunction: (defaultFormatterFunction, duration) {
        if (duration.inSeconds == 0) {
          // only format for '0'
          return "0";
        } else {
          // other durations by it's default format
          return Function.apply(defaultFormatterFunction, [duration]);
        }
      },
    );
  }
}
