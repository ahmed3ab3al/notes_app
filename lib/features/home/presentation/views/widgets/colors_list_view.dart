import 'package:flutter/cupertino.dart';
import 'package:notes_app/features/home/presentation/views/widgets/item_color.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(itemBuilder: (context,index)
          {
            return ItemColor();
          },
      itemCount: 4,
        scrollDirection: Axis.horizontal,


      ),
    );
  }
}
