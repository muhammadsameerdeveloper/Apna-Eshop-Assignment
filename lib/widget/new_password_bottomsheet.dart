import 'package:apnashop/screen/home_view.dart';
import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:flutter/material.dart';

void showNewPasswordBottomSheet(BuildContext context) {
  bool isPasswordFilled = false;
  bool isPasswordVisible = false;
  bool isNewPasswordFilled = false;
  bool isNewPasswordVisible = false;

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
                    "Create New Password",
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
                    "Old Password",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          isPasswordFilled = value.isNotEmpty;
                        });
                      },
                      obscureText: isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Create your old password",
                        hintStyle: TextStyle(
                          fontSize: SizeConfig.text(0.035),
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: isPasswordFilled
                              ? AppColors.blueColor
                              : Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: isPasswordFilled
                                ? AppColors.blueColor
                                : Colors.grey,
                          ),
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
                            color: isPasswordFilled
                                ? AppColors.blueColor
                                : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: isPasswordFilled
                                ? AppColors.blueColor
                                : Colors.grey,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "New Password",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          isNewPasswordFilled = value.isNotEmpty;
                        });
                      },
                      obscureText: isNewPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Create your new password",
                        hintStyle: TextStyle(
                          fontSize: SizeConfig.text(0.035),
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: isNewPasswordFilled
                              ? AppColors.blueColor
                              : Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isNewPasswordVisible = !isNewPasswordVisible;
                            });
                          },
                          icon: Icon(
                            isNewPasswordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: isNewPasswordFilled
                                ? AppColors.blueColor
                                : Colors.grey,
                          ),
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
                            color: isNewPasswordFilled
                                ? AppColors.blueColor
                                : Colors.transparent,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: isNewPasswordFilled
                                ? AppColors.blueColor
                                : Colors.grey,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    text: "Change Password",
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeView()),
                        (route) => false,
                      );
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
