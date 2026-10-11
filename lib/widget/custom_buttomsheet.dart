import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    isScrollControlled: false,
    builder: (context) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: SizeConfig.width * 0.4,
              height: SizeConfig.width * 0.4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.shade100,
              ),
              child: Center(
                child: Container(
                  width: SizeConfig.width * 0.3,
                  height: SizeConfig.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Register Success",
              style: TextStyle(
                fontSize: SizeConfig.text(0.06),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Congratulation! your account already created",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "Please login to get amazing experience",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 40),
            CustomButton(text: "Go to Homepage", onPressed: () {}),
            SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
