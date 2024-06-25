import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spell_it_game/game_provider.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int score = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
        automaticallyImplyLeading: false, // Prevent back button
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your final score is: $score',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<GameProvider>(context, listen: false).resetGame();
                Navigator.pushReplacementNamed(context, '/game');
              },
              child: Text('Play Again'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Provider.of<GameProvider>(context, listen: false).resetGame();
                Provider.of<GameProvider>(context, listen: false).goToHome();
                Navigator.pushReplacementNamed(context, '/');
              },
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
