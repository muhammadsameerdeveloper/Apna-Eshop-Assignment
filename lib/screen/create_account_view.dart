import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:flutter/material.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
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
                  "Create Account",
                  style: TextStyle(
                    fontSize: SizeConfig.text(0.06),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Start learning with create your account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: SizeConfig.text(0.04),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: SizeConfig.text(0.05),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Create your username",
                      hintStyle: TextStyle(
                        fontSize: SizeConfig.text(0.035),
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: AppColors.textfieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                    decoration: InputDecoration(
                      hintText: "Enter your email or phone number",
                      hintStyle: TextStyle(
                        fontSize: SizeConfig.text(0.035),
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.mail_outline, color: Colors.grey),
                      filled: true,
                      fillColor: AppColors.textfieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Create your password",
                      hintStyle: TextStyle(
                        fontSize: SizeConfig.text(0.035),
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: AppColors.textfieldColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                CustomButton(text: "Create Account", onPressed: () {}),
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
