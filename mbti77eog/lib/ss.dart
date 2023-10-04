import 'package:flutter/material.dart';
import 'main.dart';

class Ss extends StatefulWidget {
  const Ss({super.key, required this.mbti_score, required this.goFirst});

  final String mbti_score;
  final Function goFirst;

  @override
  State<Ss> createState() => _SsState();
}

class _SsState extends State<Ss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.mbti_score),
            ElevatedButton(
                onPressed: () {
                  widget.goFirst();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyApp();
                    },
                  ));
                },
                child: Text("처음으로"))
          ],
        ),
      ),
    );
  }
}
