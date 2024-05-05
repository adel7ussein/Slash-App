import 'package:flutter/material.dart';
import '../widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Slash.",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: const HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        currentIndex: 0,
        backgroundColor: Colors.grey[900],
        selectedItemColor: Colors.lightGreenAccent,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
