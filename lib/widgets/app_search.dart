import 'package:flutter/material.dart';
import 'package:shop_app/constraints.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.search, size: 35),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(Icons.camera_alt_outlined,
                color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
