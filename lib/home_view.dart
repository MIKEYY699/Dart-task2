import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:main_project/search_view.dart';

class HomeView extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
      ),
      appBar: AppBar(
        title: Text(
          'Full Fledged Project',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset('assets/images/svgs/search-svgrepo-com.svg'),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 252, 253, 253),
    );
  }
}
