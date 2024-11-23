import 'package:flutter/cupertino.dart';
import 'package:notes_app/features/home/data/models/note_model.dart';
import 'package:notes_app/features/home/presentation/views/widgets/item_color.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});
  final NoteMode note;

  @override
  State<EditColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<EditColorsListView> {

  List<Color> colors =[
    Color(0xffAC3931),
    Color(0xffE5D352),
    Color(0xffD9E76C),
    Color(0xff537D8D),
    Color(0xff482C3D),

  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(itemBuilder: (context,index)
      {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: GestureDetector(
            onTap: (){
              setState(() {
                currentIndex = index;
                widget.note.color=colors[index].value;
              });
            },
            child: ItemColor(
              color: colors[index],
              isSelected: currentIndex == index,
            ),
          ),
        );
      },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
