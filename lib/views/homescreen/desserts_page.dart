import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/views/homescreen/more_screens/my_orders_page.dart';
import 'package:meal_monkey/views/homescreen/product_details_page.dart';
import 'package:meal_monkey/widgets/search_textfield.dart';

class DessertsPage extends StatelessWidget {
  const DessertsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> desserts = [
      {
        'name': 'French Apple Pie',
        'rating': '4.9',
        'maker': 'Minute by tuk tuk',
        'type': 'desserts',
        'image': 'assets/desserts/dessert1.png',
      },
      {
        'name': 'Dark Chocolate Cake',
        'rating': '4.7',
        'maker': 'Cakes by Tella',
        'type': 'desserts',
        'image': 'assets/desserts/dessert2.png',
      },
      {
        'name': 'Street Shake',
        'rating': '4.9',
        'maker': 'Café Racer',
        'type': 'desserts',
        'image': 'assets/desserts/dessert3.png',
      },
      {
        'name': 'Fudgy Chewy Brownies',
        'rating': '4.8',
        'maker': 'Minute by tuk tuk',
        'type': 'desserts',
        'image': 'assets/desserts/dessert4.png',
      },
    ];
    List<double> price = [
      200,
      320,
      400,
      175.5,
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30.8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: seconderyfontColor,
                          ),
                        ),
                        Text(
                          'Desserts',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: seconderyfontColor,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOrdersPage(),));
                      },
                      icon: Icon(
                        Icons.shopping_cart_rounded,
                        color: seconderyfontColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              SearchTextfield(),
              SizedBox(height: 19),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: desserts.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailsPage(image: desserts[index]['image'], name: desserts[index]['name'], price: price[index]))),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              opacity: 0.95,
                              image: AssetImage(desserts[index]['image']),
                              fit: .cover,
                            ),
                          ),
                          height: 193,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                SizedBox(height: 126),
                                Text(
                                  desserts[index]['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: .bold,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  children: [
                                    Icon(Icons.star , color: mainColor, size: 21,),
                                    Text(desserts[index]['rating'] , style: TextStyle(color: mainColor , fontSize: 11),),
                                    const SizedBox(width: 5,),
                                    Text(desserts[index]['maker'] , style: TextStyle(color: Colors.white,fontSize: 12 ,),),
                                    const SizedBox(width: 5,),
                                    Text('.' , style: TextStyle(color: mainColor),),
                                    const SizedBox(width: 5,),
                                    Text(desserts[index]['type'] , style: TextStyle(color: Colors.white , fontSize: 12),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
