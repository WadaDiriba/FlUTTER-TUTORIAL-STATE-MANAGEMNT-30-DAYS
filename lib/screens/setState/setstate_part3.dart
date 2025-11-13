import 'package:flutter/material.dart';

class SetstatePart3 extends StatefulWidget {
  const SetstatePart3({super.key});

  @override
  State<SetstatePart3> createState() => _SetstatePart3State();
}

class _SetstatePart3State extends State<SetstatePart3> {
  String _mood = "Happy 😊";
  Color _bgColor = Colors.yellow.shade200;
  Color _btnColor = Colors.orange;
  IconData _icon = Icons.sentiment_satisfied;

  void _changeMood(String mood) {
    setState(() {
      if (mood == "happy") {
        _mood = "happy🤣";
        _bgColor = Colors.yellow.shade200;
        _btnColor = Colors.orange;
        _icon = Icons.sentiment_satisfied;
      } else if (mood == "sad") {
        _mood = "sad🥲";
        _bgColor = Colors.blue.shade100;
        _btnColor = Colors.blueAccent;
        _icon = Icons.sentiment_dissatisfied;
      } else if (mood == "angry") {
        _mood = "Angry😠";

        _bgColor = Colors.red.shade100;
        _btnColor = Colors.redAccent;
        _icon = Icons.sentiment_very_dissatisfied;
      } else if (mood == "calm") {
        _mood = "calm😠";

        _bgColor = Colors.blueAccent;
        _btnColor = Colors.greenAccent;
        _icon = Icons.sentiment_satisfied_alt_rounded;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,

      appBar: AppBar(
        backgroundColor: _btnColor,
        title: const Text(
          "SetState PART 3 ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(_icon, size: 100, color: _btnColor),
            const SizedBox(height: 20),
            Text(
              _mood,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),

            AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.bounceOut,
              child: Wrap(
                spacing: 15,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () => _changeMood("happy"),
                    child: const Text("Happy"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () => _changeMood("sad"),
                    child: const Text("Sad"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () => _changeMood("angry"),
                    child: const Text(" Angry"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                    onPressed: () => _changeMood("calm"),
                    child: const Text("calm"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
