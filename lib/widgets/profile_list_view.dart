import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileListView extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final IconData? leadingIcon;
  bool isNew = false;
  ProfileListView({
    Key? key,
    required this.title,
    required this.icon,
    required this.leadingIcon,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xff00C569).withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            leadingIcon!,
            color: Colors.black,
          ),
        ),
        title: isNew
            ? Row(
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color(0xffE80057),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'New',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Text(
                title!,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
        trailing: Icon(
          icon!,
          size: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
