import 'package:flutter/material.dart';
import 'package:fluxapp/views/discover/discover.dart';
import 'package:fluxapp/views/home/product_detail.dart';
import 'package:provider/provider.dart';
import 'main_screen.dart';
import 'viewmodels/home_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        // Thêm các ViewModel khác tại đây
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
