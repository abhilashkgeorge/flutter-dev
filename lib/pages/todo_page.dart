import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {


  TextEditingController mainController = TextEditingController();

  String greetingMessage = '';


  void _greetUser() {

    String inputtedText = mainController.text;

    setState(() {
      greetingMessage = 'Text:$inputtedText';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(greetingMessage),

                TextField(
                  controller: mainController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the text that you want to be displayed!'
                  ),
                ), 
                ElevatedButton(onPressed: _greetUser, child: 
                Text('Tapp'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}