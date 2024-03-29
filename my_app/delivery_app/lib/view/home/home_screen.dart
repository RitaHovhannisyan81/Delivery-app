import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categories = [
    ['./assets/images/categories/convenience.png', 'Convenience'],
    ['./assets/images/categories/alcohol.png', 'Alcohol'],
    ['./assets/images/categories/petSupplies.png', 'Pet Supplies'],
    ['./assets/images/categories/icecream.png', 'Ice Cream']
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        const SizedBox(
          height: 35,
        ),
        const Text(
          'Current Location',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                alignment: Alignment.center,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'American',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Image(
                      image:
                          AssetImage('./assets/images/categories/american.png'),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                alignment: Alignment.center,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grocery',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Image(
                      image:
                          AssetImage('./assets/images/categories/grocery.png'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: categories
              .map((e) => Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: Image(
                          image: AssetImage(e[0]),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        e[1],
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))
              .toList(),
        ),
        const SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 10,
          color: Colors.grey[300],
        ),
        ListView.builder(shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
              color: Colors.grey[300]),
            );
          },
        )
      ],
    ));
  }
}
