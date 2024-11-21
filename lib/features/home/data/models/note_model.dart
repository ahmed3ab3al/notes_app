import 'package:hive_flutter/hive_flutter.dart';
part 'note_model.g.dart';


@HiveType(typeId: 0)
class NoteMode extends HiveObject   {
  @HiveField(0)
    String title;
  @HiveField(1)
    String content;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteMode({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}