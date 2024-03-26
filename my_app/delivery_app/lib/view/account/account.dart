import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccounScreen extends StatefulWidget {
  const AccounScreen({super.key});

  @override
  State<AccounScreen> createState() => _AccounScreenState();
}

class _AccounScreenState extends State<AccounScreen> {
  List account = [
    [FontAwesomeIcons.shop, 'Orders'],
    [FontAwesomeIcons.heart, 'Your favourites'],
    [FontAwesomeIcons.star, 'Restaurant Rewards'],
    [FontAwesomeIcons.wallet, 'Wallet'],
    [FontAwesomeIcons.gift, 'Send a gift'],
    [FontAwesomeIcons.suitcase, 'Buisness preferances'],
    [FontAwesomeIcons.person, 'Help'],
    [FontAwesomeIcons.tag, 'Promotion'],
    [FontAwesomeIcons.ticket, 'Uber Pass'],
    [FontAwesomeIcons.suitcase, 'Deliver with uber'],
    [FontAwesomeIcons.gear, 'Settings'],
    [FontAwesomeIcons.powerOff, 'Sign Out'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
           const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor:Colors.white,
                  child: FaIcon(
                    FontAwesomeIcons.user,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Text(
                  'Users Name',
                  style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          ListView.builder(
            itemCount: account.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: FaIcon(
                  account[index][0],
                  size: 20,
                ),
                title: Text(
                  account[index][1],
                  style: const TextStyle(fontSize: 14,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
