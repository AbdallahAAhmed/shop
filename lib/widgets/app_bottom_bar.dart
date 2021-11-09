import 'package:flutter/material.dart';
import 'package:shop_app/models/app_bar_item.dart';
import 'package:shop_app/models/dummy_app_bar_items.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: Offset.zero,
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(barItems.length, (index) {
          AppBottomBarItem currentItem = barItems[index];
          Widget barItemWidget;

          if (currentItem.isSelected) {
            barItemWidget = Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  currentItem.label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '*',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            );
          } else {
            barItemWidget = TextButton(
              onPressed: () {
                setState(() {
                  for (var item in barItems) {
                    item.isSelected = item == currentItem;
                  }
                });
              },
              child: Image(
                image: AssetImage(currentItem.icon!),
                width: 30,
                height: 30,
              ),
            );
          }

          return barItemWidget;
        }),
      ),
    );
  }
}
