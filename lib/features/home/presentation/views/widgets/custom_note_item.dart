import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/views/edit_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.model});
  final NoteMode model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 12,
        ),
        decoration: BoxDecoration(
          color:  Color(model.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(model.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  )),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child:
                    Text(model.content,
                        style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontSize: 16,
                        )),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(model.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                    fontSize: 13,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
