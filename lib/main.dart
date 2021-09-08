import 'package:flutter/material.dart';

import 'package:new_me_jhay/ShoppingProject/Providers/products.dart';
import 'package:new_me_jhay/ShoppingProject/Screens/product_detail_screen.dart';
import 'package:new_me_jhay/ShoppingProject/Screens/product_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext build) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepOrange,
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  color: Colors.black,
                ),
                subtitle1:
                    TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
                button: TextStyle(color: Colors.blueAccent),
              ),
        ),
        home: Scaffold(
          body: ProductOverViewScreen(),
        ),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen()
        },
      ),
    );
  }
}
