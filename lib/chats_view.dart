import 'package:flutter/material.dart';
import 'package:main_project/Modles/chat_class.dart';

class ChatsView extends StatelessWidget {
  ChatsView({super.key});

  final List items = [
    ChatClass(
      name: 'BMW',
      msg: 'I5 Turbo with latesst Generation',
      profile_image: 'assets/images/BMW.jpeg',
    ),
    ChatClass(
      name: 'Porsche',
      msg: 'Made with Modren TEchnology',
      profile_image: 'assets/images/Porsche.jpeg',
    ),
    ChatClass(
      name: 'Adro',
      msg: 'Highly iin Demand',
      profile_image: 'assets/images/Adro.png',
    ),
    ChatClass(
      name: 'BMW',
      msg: 'I5 Turbo with latesst Generation',
      profile_image: 'assets/images/BMW.jpeg',
    ),
    ChatClass(
      name: 'Porsche',
      msg: 'Made with Modren TEchnology',
      profile_image: 'assets/images/Porsche.jpeg',
    ),
    ChatClass(
      name: 'Adro',
      msg: 'Highly iin Demand',
      profile_image: 'assets/images/Adro.png',
    ),
    ChatClass(
      name: 'BMW',
      msg: 'I5 Turbo with latesst Generation',
      profile_image: 'assets/images/BMW.jpeg',
    ),
    ChatClass(
      name: 'Porsche',
      msg: 'Made with Modren TEchnology',
      profile_image: 'assets/images/Porsche.jpeg',
    ),
    ChatClass(
      name: 'Adro',
      msg: 'Highly iin Demand',
      profile_image: 'assets/images/Adro.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cars', style: TextStyle(fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Card(
                child: Column(
                  children: [
                    Card(
                      child: Text(
                        items[index].name,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),

                    Text(items[index].msg),
                    Divider(
                      thickness: 1,
                      height: 2,
                      indent: 16,
                      endIndent: 19,
                      color: const Color.fromARGB(255, 224, 219, 219),
                    ),
                    Image.asset(items[index].profile_image),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
