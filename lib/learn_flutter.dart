import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rocks on You'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/pic.jpg'),
          const Divider(height: 9),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(9),
            child: const Text(
              'Some long long text as im trying to get a feel of this',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('Btn Pressed');
            },
            child: const Text('Click Me'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outline Clicked');
            },
            child: const Text('Outline Click'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.local_fire_department),
              const Text('Some services provided'),
              Icon(Icons.local_gas_station)
            ],
          )
        ],
      ),
    );
  }
}
