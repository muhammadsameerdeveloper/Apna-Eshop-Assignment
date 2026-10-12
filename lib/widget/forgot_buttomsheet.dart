import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:apnashop/widget/new_password_bottomsheet.dart';
import 'package:flutter/material.dart';

void showForgotBottomSheet(BuildContext context) {
  TextEditingController emailController = TextEditingController();
  bool isEmailFilled = false;

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    isScrollControlled: true,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Enter your email or phone number",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.04),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Email or Phone Number",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: emailController,
                    onChanged: (value) {
                      setState(() {
                        isEmailFilled = value.trim().isNotEmpty;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter your email or phone number",
                      hintStyle: TextStyle(
                        fontSize: SizeConfig.text(0.035),
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: isEmailFilled
                            ? AppColors.blueColor
                            : Colors.grey,
                      ),
                      suffixIcon: Icon(
                        Icons.check_circle,
                        color: isEmailFilled
                            ? Colors.green
                            : Colors.grey.shade400,
                      ),
                      filled: true,
                      fillColor: AppColors.textfieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: isEmailFilled
                              ? AppColors.blueColor
                              : Colors.transparent,
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: isEmailFilled
                              ? AppColors.blueColor
                              : Colors.grey,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),
                  CustomButton(
                    text: "Send Code",
                    onPressed: () {
                      Navigator.pop(context);
                      showNewPasswordBottomSheet(context);
                    },
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
