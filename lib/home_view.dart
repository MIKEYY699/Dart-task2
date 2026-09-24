import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main_project/chats_view.dart';
import 'package:main_project/search_view.dart';

class HomeView extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), child: Text('Home')),
              Tab(icon: Icon(Icons.search), child: Text('Search')),
              Tab(icon: Icon(Icons.chat), child: Text('Chats')),
            ],
          ),
        ),

        // body: TabBarItem1(),
        // appBar: AppBar(
        //   title: Text(
        //     'Full Fledged Project',
        //     style: TextStyle(fontWeight: FontWeight.w600),
        //   ),
        //   centerTitle: true,
        //   actions: [
        //     SvgPicture.asset('assets/images/svgs/search-svgrepo-com.svg'),
        //   ],
        // ),
        backgroundColor: const Color.fromARGB(255, 253, 255, 255),
        body: TabBarView(children: [TabBarItem1(), SearchView(), ChatsView()]),
      ),
    );
  }
}

class TabBarItem1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/image.png'),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchView()),
            );
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: Text(
            'Lets Start ->',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
