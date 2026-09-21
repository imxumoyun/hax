import 'package:flutter/material.dart';
import 'package:hax/categories.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> pages = [
    CategoriesPage(),
    Center(child: Text("Futbol qachon bo'ladi"),),
    Center(child: Text("Keyingi hafta bo'lsa kerak"),),
  ];
  int currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          print(index);
          setState(() {
            currIndex = index;
          });
        },
        currentIndex: currIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.border_all_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: '',
          ),
        ],
      ),
    );
  }
}