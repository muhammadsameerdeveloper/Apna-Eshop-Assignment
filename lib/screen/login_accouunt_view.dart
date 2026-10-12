import 'package:apnashop/screen/verification_view.dart';
import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:apnashop/widget/forgot_buttomsheet.dart';
import 'package:flutter/material.dart';

class LoginAccouuntView extends StatefulWidget {
  const LoginAccouuntView({super.key});

  @override
  State<LoginAccouuntView> createState() => _LoginAccouuntViewState();
}

class _LoginAccouuntViewState extends State<LoginAccouuntView> {
  bool isEmailFilled = false;
  bool isPasswordFilled = false;
  bool isPasswordVisible = false;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Login Account",
                  style: TextStyle(
                    fontSize: SizeConfig.text(0.06),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Please login with registered account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: SizeConfig.text(0.04),
                  ),
                ),
                SizedBox(height: 30),

                Text(
                  "Email or Phone Number",
                  style: TextStyle(
                    fontSize: SizeConfig.text(0.05),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    controller: emailController,
                    onChanged: (value) {
                      setState(() {
                        isEmailFilled = value.isNotEmpty;
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
                ),
                SizedBox(height: 30),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: SizeConfig.text(0.05),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
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
                      hintText: "Create your password",
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
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        showForgotBottomSheet(context);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: SizeConfig.text(0.045),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CustomButton(
                  text: "Create Account",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationView(
                          email: emailController.text.isEmpty
                              ? "unknown@gmail.com"
                              : emailController.text,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "Or using other method",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: SizeConfig.text(0.04),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: SizeConfig.height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.textfieldColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/google.png", width: 35),
                        SizedBox(width: 7),
                        Text(
                          "Sign Up with Google",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: SizeConfig.height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.textfieldColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook, size: 35, color: Colors.blue),
                        SizedBox(width: 7),
                        Text(
                          "Sign Up with Facebook",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
