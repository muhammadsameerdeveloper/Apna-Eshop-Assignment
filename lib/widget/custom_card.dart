import 'package:apnashop/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String name;
  final String brand;
  final String price;
  const CustomCard({
    super.key,
    required this.image,
    required this.name,
    required this.brand,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width * 0.42,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: SizeConfig.height * 0.22,
                width: SizeConfig.width * 0.42,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 6,
                right: 6,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.favorite, color: Colors.white),
                ),
              ),
            ],
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            brand,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            price,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
