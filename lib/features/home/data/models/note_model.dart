import 'package:hive_flutter/hive_flutter.dart';
part 'note_model.g.dart';


@HiveType(typeId: 0)
class NoteMode extends HiveObject   {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteMode({
    required this.title,
    required this.content,
    required this.date,
    required this.color});

}
