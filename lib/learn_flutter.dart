import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = false;
  bool? isCheckbox = false;

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
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              debugPrint('Settings Pressed');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/pic.jpg'),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(9),
              child: const Text(
                'I am an AI-integrated Software Engineer. I believe in creating simple but robust systems that are user centered. I love exploring new tech and creating something that gets the job done, makes the users happy to come back again. Be it front-end systems, back-end systems or scripts.',
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitched ? Colors.blue : Colors.orange,
              ),
              onPressed: () {
                debugPrint('Btn Pressed');
              },
              child: const Text('Click Me'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.local_fire_department),
                const Text('Some services provided'),
                Icon(Icons.local_gas_station),
              ],
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool newBoolean) {
                setState(() {
                  isSwitched = newBoolean;
                });
              },
            ),
            const Text('Checkbox'),
            Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBoolean) {
                setState(() {
                  isCheckbox = newBoolean;
                });
              },
            ),
            Image.network('https://git-scm.com/images/logo@2x.png'),
            Image.network(
              'https://i.pinimg.com/736x/1f/a7/cb/1fa7cb883f221a8936f82164239da43f.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
