import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Teste de relógio'),
          centerTitle: true,
        ),
        body: Container(
  margin: const EdgeInsets.only(top: 20, right: 140.0), // Espaçamento
  alignment: Alignment.topRight, // Alinhamento dentro do container
  child:
        
        CircularCountDownTimer(
          duration: 10,
          initialDuration: 0,
          controller: CountDownController(),
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.height / 6,
          ringColor: Colors.grey[300]!,
          fillColor: Colors.purpleAccent[100]!,
          backgroundColor: Colors.purple[500],
          strokeWidth: 10.0,
          strokeCap: StrokeCap.round,
          textStyle: TextStyle(
              fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          textFormat: CountdownTextFormat.S,
          isReverse: true,
          isReverseAnimation: false,
          isTimerTextShown: true,
          autoStart: true,
          onStart: () {
            debugPrint('Countdown Started');
          },
          onComplete: () {
            debugPrint('Countdown Ended');
          },
          onChange: (String timeStamp) {
            debugPrint('Countdown Changed $timeStamp');
          },
          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              return "Start";
            } else {
              return Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
      )
    );
  }
}
