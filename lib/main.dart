import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:main_project/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ScreenUtilInit(child: MaterialApp(home: HomePage())));
}



