import 'package:flutter/material.dart';

const int itemCount = 18;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      padding: const EdgeInsets.all(2.7),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text('Person ${index + 1}'),
          subtitle: Text('Brief info on person ${index + 1} ...'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){
            debugPrint('Tapped on person ${index + 1}');
          },
        );
      },
    );
  }
}
