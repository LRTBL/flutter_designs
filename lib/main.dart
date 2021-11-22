import 'package:designs/screens/basic_desing.dart';
import 'package:designs/screens/footloose/login_screen.dart';
import 'package:designs/screens/home_screen.dart';
import 'package:designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      initialRoute: 'basic',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.red, primary: Colors.purple),
      ),
      routes: {
        'basic': (_) => const BasicDesignScreen(),
        'home': (_) => const HomeScreen(),
        'scroll': (_) => const ScrollDesignScreen(),
        'footloose/login': (_) => const LoginScreen(),
      },
    );
  }
}
