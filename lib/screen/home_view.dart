import 'package:apnashop/utils/app_colors.dart';
import 'package:apnashop/utils/size_config.dart';
import 'package:apnashop/widget/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController pageController = PageController();
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
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextButton(onPressed: () {}, child: Text("Home")),
                      SizedBox(height: 5),
                      Container(
                        height: 2,
                        width: 100,
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                ),
                Expanded(child: Center(child: Text("Category"))),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 180,
                child: PageView(
                  controller: pageController,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(16),
                          child: Image.asset(
                            "assets/images/Mans Jeans Poster.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(16),
                          child: Image.asset(
                            "assets/images/Woman Jeans Poster.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(16),
                          child: Image.asset(
                            "assets/images/Kids Jeans Poster.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                activeDotColor: AppColors.blueColor,
                dotHeight: 8,
                dotWidth: 8,
                dotColor: Colors.grey.shade300,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrifals 🔥",
                    style: TextStyle(
                      fontSize: SizeConfig.text(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: SizeConfig.text(0.04),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomCard(
              image: "assets/images/sublevelmansjeans.jpg",
              name: "Men's Jeans",
              brand: "SubLevel",
              price: "9000",
            ),
          ],
        ),
      ),
    );
  }
}
