import 'package:flutter/material.dart';

class Animacao1BotaoContainer extends StatefulWidget {
  Animacao1BotaoContainer({Key? key}) : super(key: key);

  @override
  State<Animacao1BotaoContainer> createState() =>
      _Animacao1BotaoContainerState();
}

class _Animacao1BotaoContainerState extends State<Animacao1BotaoContainer> {
  final duration = Duration(milliseconds: 500);
  late bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(child: Text('Animação 1 - Botão para Container')),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () async {
            setState(() {
              onPressed = !onPressed;
            });
          },
          child: AnimatedAlign(
            alignment: onPressed ? Alignment.topCenter : Alignment.bottomRight,
            duration: duration,
            child: AnimatedContainer(
              height: 50,
              width: onPressed ? 200 : 50,
              duration: duration,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(onPressed ? 0 : 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
