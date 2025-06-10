import 'package:flutter/material.dart';

import 'screens/counter_screen.dart';
import 'screens/init_screen.dart';

void main() {
  runApp(UebungMachtMeister());
}

class UebungMachtMeister extends StatelessWidget {
  const UebungMachtMeister({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black12),
          useMaterial3: true,
        ),
        title: 'Uebung Macht Meister',
        initialRoute: '/',
        routes: {
          '/': (context) => InitScreen(),
          '/counter': (context) => CounterScreen(),
        });
  }
}
