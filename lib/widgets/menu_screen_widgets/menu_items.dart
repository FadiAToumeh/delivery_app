import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final double imageHeight;
  final double imageWidth;
  final String title ;
  final String subtitle;
  final String imagePath;
  const MenuItem({super.key, required this.title, required this.subtitle, required this.imagePath, required this.imageHeight, required this.imageWidth, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 8),
        height: 100,
        child: Stack(
          alignment: .center,
          clipBehavior: Clip.none,
          children: [
            // Main container
            Container(
              height: 87,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 12)],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  // Space for overflowing image
                  SizedBox(width: 50),
                  // Content
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: primaryfontColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            color: seconderyfontColor,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Space for arrow
                  SizedBox(width: 40),
                ],
              ),
            ),
            
            // Image - half inside, half outside
            Positioned(
              left: -35,
              top: 12,
              child: Container(
                height: imageHeight,
                width: imageWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  
                ),)
              ),
            ),
            
            // Arrow - half inside, half outside
            Positioned(
              right: -16,
              top: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
                  ),
                  child: Icon(Icons.arrow_forward_ios, 
                    color: mainColor, 
                    size: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[200],
//                 boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.cover,
//                 ),
//               ),