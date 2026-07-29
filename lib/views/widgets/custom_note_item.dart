import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNotesView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 12, bottom: 14, left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffFFCC80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'build your carrer with tharwat samy',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: InkWell(
                onTap: () {},
                child: Icon(Icons.delete, color: Colors.black, size: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 8),
              child: Text(
                '21 May , 2022',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
