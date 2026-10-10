import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationView extends StatefulWidget {
  final String email;
  const VerificationView({super.key, required this.email});

  @override
  State<VerificationView> createState() => _VerificationViewState();
}

class _VerificationViewState extends State<VerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verification",
          style: TextStyle(
            fontSize: SizeConfig.text(0.05),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: SizeConfig.width * 0.4,
                decoration: BoxDecoration(
                  color: Color(0xFFDEDEFF),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: SizeConfig.height * 0.3,
                        width: SizeConfig.width * 0.3,
                        decoration: BoxDecoration(
                          color: AppColors.blueColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mark_email_read_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Verification Code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.text(0.07),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We have to sent the code verification to",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: SizeConfig.text(0.045),
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.email,
                style: TextStyle(
                  fontSize: SizeConfig.text(0.05),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Pinput(
                length: 5,
                defaultPinTheme: PinTheme(
                  width: 55,
                  height: 60,
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 55,
                  height: 60,
                  textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.blueColor, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 50),
              CustomButton(text: "Submit", onPressed: () {}),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't reveice the code?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: SizeConfig.text(0.04),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        fontSize: SizeConfig.text(0.04),
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
