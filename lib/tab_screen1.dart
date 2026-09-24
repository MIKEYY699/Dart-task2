import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:main_project/Modles/fourth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  Hive.registerAdapter(FourthScreenAdapter());
  await Hive.openBox<FourthScreen>('FourthScreen');

  runApp(MaterialApp(home: Scaffold(body: Home())));
}

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            _showMyDialogs(context);
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}

Future<void> _showMyDialogs(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Add Note'),
        
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Add'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Add'),
          ),
        ],
      );
    },
  );
}
