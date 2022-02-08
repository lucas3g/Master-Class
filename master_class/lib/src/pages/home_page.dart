import 'package:flutter/material.dart';
import 'package:master_class/src/pages/animacao_1_botao_container.dart';
import 'package:master_class/src/pages/animacao_2_expasion_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Animacao1BotaoContainer(),
                        ),
                      );
                    },
                    child: Text('Animação 1 - Botão para Container'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Animacao2ExpasionTile(),
                        ),
                      );
                    },
                    child: Text('Animação 2 - Expasion Tile'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FittedBox(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                          'Animação 3 - Botão para Container - CONTROLADA'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Animação 4 - Expasion Tile - CONTROLADA'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
