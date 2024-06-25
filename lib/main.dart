// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:spell_it_game/game.dart';
// import 'package:spell_it_game/game_provider.dart';
// import 'package:spell_it_game/results.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => GameProvider()),
//       ],
//       child: MaterialApp(
//         title: 'Spell It Game',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         initialRoute: '/game',
//         routes: {
//           '/game': (context) => GamePage(),
//           '/results': (context) => ResultsPage(),
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spell_it_game/game.dart';
import 'package:spell_it_game/game_provider.dart';

import 'package:spell_it_game/dashboard_page.dart';
import 'package:spell_it_game/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GameProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spell It Game',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => DashboardPage(),
          '/game': (context) => GamePage(),
          '/results': (context) => ResultsPage(),
        },
      ),
    );
  }
}
