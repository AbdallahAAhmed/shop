import 'package:flutter/material.dart';
import 'package:shop_app/widgets/app_bottom_bar.dart';
import 'package:shop_app/widgets/profile_list_view.dart';

class AccountPage extends StatelessWidget {
  static const String routeName = '/account_page';
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, right: 25),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.PNG'),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'David Spade',
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'iamdavid@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ProfileListView(
                isNew: false,
                title: 'Edit Profile',
                leadingIcon: Icons.edit,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: false,
                title: 'Shipping Address',
                leadingIcon: Icons.location_on_outlined,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: true,
                title: 'Wishlist',
                leadingIcon: Icons.favorite_border_outlined,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: false,
                title: 'Order History',
                leadingIcon: Icons.watch_later_outlined,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: false,
                title: 'Track Order',
                leadingIcon: Icons.art_track_sharp,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: false,
                title: 'Cards',
                leadingIcon: Icons.credit_card,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: false,
                title: 'Notifications',
                leadingIcon: Icons.notifications,
                icon: Icons.arrow_forward_ios),
            ProfileListView(
                isNew: false,
                title: 'Log Out',
                leadingIcon: Icons.logout,
                icon: Icons.arrow_forward_ios),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomBar(),
    );
  }
}
