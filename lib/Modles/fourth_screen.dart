import 'package:hive_ce/hive.dart';
part 'fourth_screen.g.dart';
@HiveType(typeId: 0)
class FourthScreen {
  FourthScreen({required this.title, required this.description});
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
}
