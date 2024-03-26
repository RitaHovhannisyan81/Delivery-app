import 'package:flutter/material.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  List categories = [
    ['assets/images/categories/alcohol.png', 'Alcohol'],
    ['assets/images/categories/american.png', 'American'],
    ['assets/images/categories/asian.png', 'Asian'],
    ['assets/images/categories/burger.png', 'Burger'],
    ['assets/images/categories/carrebian.png', 'Carrebian'],
    ['assets/images/categories/chinese.png', 'Chinese'],
    ['assets/images/categories/convenience.png', 'Convenience'],
    ['assets/images/categories/dessert.png', 'DEssert'],
    ['assets/images/categories/fastFood.png', 'Fast Food'],
    ['assets/images/categories/flower.png', 'Flower'],
    ['assets/images/categories/french.png', 'French'],
    ['assets/images/categories/grocery.png', 'Grocery'],
    ['assets/images/categories/halal.png', 'Halal'],
    ['assets/images/categories/icecream.png', 'Icecream'],
    ['assets/images/categories/indian.png', 'Indian'],
    ['assets/images/categories/petSupplies.png', 'Pet Supplies'],
    ['assets/images/categories/retails.png', 'Retails'],
    ['assets/images/categories/ride.png', 'Ride'],
    ['assets/images/categories/takeout.png', 'Takeout'],

];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          children:[
            const SizedBox(height: 25,),
              const Text('All categories',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontSize: 18,
                  ),
                  ),
              const SizedBox(height: 10,),
            GridView.builder(
              itemCount: categories.length, shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 0.8,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10),
              itemBuilder: (context, index){
                return  Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:Colors.grey[300]),
                        child: Image(
                          image:AssetImage(
                          categories[index][0],
                          ),
                        ),
                      ),
                    ),
                    const  SizedBox(height: 0.5,),
                    Text(categories[index][1],
                    style: const TextStyle(fontSize: 11,fontWeight: FontWeight.bold)),
                  ],
                );
      },
            ),
          ],
          )
      ),
    );
  }
}
