import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Apna Eshop",
                      style: TextStyle(
                        fontSize: SizeConfig.text(0.1),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      "Any shopping just from home",
                      style: TextStyle(
                        fontSize: SizeConfig.text(0.05),
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.height * 0.1),
            Text(
              "Version 0.0.1",
              style: TextStyle(
                fontSize: SizeConfig.text(0.05),
                color: Colors.white70,
              ),
            ),

            SizedBox(height: SizeConfig.height * 0.03),
          ],
        ),
      ),
    );
  }
}
