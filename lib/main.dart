import 'package:flutter/material.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
/* ------- Text du Quizz --------------- */

                const Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: Text(
                        "Question super difficile !?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 88, 242, 247),
                            fontSize: 25.0),
                      ),
                    ),
                  ),
                ),
                /* ------- Buttons Vrai / Faux --------------- */

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Vrai",
                        style: TextStyle(
                            color: Color.fromARGB(255, 233, 251, 239),
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 219, 27, 27)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Faux",
                        style: TextStyle(
                            color: Color.fromARGB(255, 233, 251, 239),
                            fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /* ------- APP BAR --------------- */
          appBar: AppBar(
            backgroundColor: Color.fromARGB(220, 8, 64, 175),
            title: const Text(
              'Le Super Quizz !',
              style: TextStyle(
                  color: Color.fromARGB(255, 88, 247, 1), fontSize: 45.0),
            ),
          )),
    );
  }
}
