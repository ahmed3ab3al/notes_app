import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/features/home/presentation/views/edit_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

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
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('Flutter Tips',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  )),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child:
                    Text('Build your career with Flutter and learn new things.',
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
              child: Text('9 days ago',
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
