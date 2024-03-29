import 'package:flutter/material.dart';
import 'package:slash_app/screens/details_screen.dart';
import 'package:slash_app/screens/home_screen.dart';
import 'package:slash_app/services/get_all_product_service.dart';

void main() {
  runApp(const MyApp());
  AllProductsService().getAllProducts();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(color: Colors.black,elevation: 0),
        scaffoldBackgroundColor: Colors.black26
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        DetailsScreen.id: (context) => const DetailsScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}


