import 'package:flutter/material.dart';


enum SampleItem { itemOne, itemTwo, itemThree }

class settingsButtonWidget extends StatefulWidget {
  const settingsButtonWidget({
    super.key,
  });

  @override
  State<settingsButtonWidget> createState() => _settingsButtonWidgetState();
}

class _settingsButtonWidgetState extends State<settingsButtonWidget> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      initialValue: selectedMenu,
      // Callback that sets the selected popup menu item.
      onSelected: (SampleItem item) {
        setState(() {
          selectedMenu = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text('Item 1'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('Item 2'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: Text('Item 3'),
        ),
      ],
    );
  }
}


