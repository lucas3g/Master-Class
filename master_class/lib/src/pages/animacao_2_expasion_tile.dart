import 'package:flutter/material.dart';

class Animacao2ExpasionTile extends StatefulWidget {
  Animacao2ExpasionTile({Key? key}) : super(key: key);

  @override
  State<Animacao2ExpasionTile> createState() => _Animacao2ExpasionTileState();
}

class Data {
  final String title;
  final String description;
  late bool tapped;

  Data(this.title, this.description, this.tapped);
}

class _Animacao2ExpasionTileState extends State<Animacao2ExpasionTile> {
  final duration = Duration(milliseconds: 300);
  late List<Data> data = [];

  @override
  void initState() {
    super.initState();
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
    data.add(Data(
        'Expastion tile',
        'Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi, Oooi,',
        false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (_, int index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        onTap: () {
                          setState(() {
                            data[index].tapped = !data[index].tapped;
                          });
                        },
                        title: Text('${data[index].title} - $index'),
                        trailing: AnimatedRotation(
                          duration: duration,
                          turns: data[index].tapped ? 0.5 : 0.0,
                          child: Icon(
                            Icons.arrow_downward,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: AnimatedAlign(
                          alignment: Alignment.center,
                          duration: duration,
                          heightFactor: data[index].tapped ? 1 : 0,
                          child: AnimatedOpacity(
                            opacity: data[index].tapped ? 1 : 0,
                            duration: duration,
                            child: Text(
                              data[index].description,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (_, __) => Divider(),
                itemCount: data.length),
          ),
        ],
      ),
    );
  }
}
