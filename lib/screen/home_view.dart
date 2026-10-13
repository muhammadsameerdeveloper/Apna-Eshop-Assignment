import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey.shade300,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
              title: Text(
                "Hi, Jonathan",
                style: TextStyle(
                  fontSize: SizeConfig.text(0.04),
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Let's go shopping",
                style: TextStyle(
                  fontSize: SizeConfig.text(0.03),
                  color: Colors.grey,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(onTap: () {}, child: Icon(Icons.search)),
                  SizedBox(width: 15),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.notifications_none_outlined),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.05),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 80),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.05),
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: Divider(color: AppColors.blueColor, thickness: 2),
                ),
                SizedBox(width: 80),
                SizedBox(
                  width: 80,
                  child: Divider(color: AppColors.blueColor, thickness: 2),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
