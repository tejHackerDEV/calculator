import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List gridViewOptions = [
    'AC',
    '( )',
    '%',
    '÷',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'clear',
    '=',
  ];

  final extraOptions = [
    '√',
    'π',
    '^',
    '!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(25.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                top: 16.0,
                bottom: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...extraOptions.map((e) => _iconTextButton(e)),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey.shade100,
                      shape: const CircleBorder(),
                    ),
                    child: const Icon(
                      Icons.expand_more_outlined,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              padding: const EdgeInsets.all(8.0),
              crossAxisCount: 4,
              crossAxisSpacing: 8.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                gridViewOptions.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      backgroundColor: index == gridViewOptions.length - 1
                          ? Colors.blueGrey.shade100
                          : index == 0
                              ? Colors.greenAccent.shade100
                              : index < 4 || (index + 1) % 4 == 0
                                  ? Colors.cyan.shade100
                                  : Colors.grey.shade100,
                    ),
                    onPressed: () {},
                    child: index == gridViewOptions.length - 2
                        ? const Icon(
                            Icons.backspace_outlined,
                            color: Colors.black,
                          )
                        : Text(
                            gridViewOptions[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconTextButton(String text) {
    return IconButton(
      onPressed: () {},
      icon: Text(
        text,
        style: const TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}
