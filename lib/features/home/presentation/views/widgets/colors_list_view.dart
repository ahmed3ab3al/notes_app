import 'package:flutter/cupertino.dart';
import 'package:notes_app/features/home/presentation/views/widgets/item_color.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

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
