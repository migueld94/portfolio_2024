import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900]!,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250.0,
            width: double.infinity,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage(
                  //     Assets.pic_00,
                  //   ),
                  //   fit: BoxFit.fill,
                  // ),
                  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Ionicons.pizza_outline,
                    color: Colors.orange,
                    size: 50.0,
                  ),
                  verticalMargin12,
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dopping ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                          ),
                        ),
                        TextSpan(
                          text: 'Pizza',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              'Models',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text(
              'Technology',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text(
              'History',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text(
              'Shop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {},
            title: const Text(
              'Owner',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
