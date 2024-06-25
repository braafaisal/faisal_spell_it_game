// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:spell_it_game/game_provider.dart';

// class GamePage extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async => false, // Prevent back button
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Game Page'),
//           leading: Container(), // Hide back button
//           actions: [
//             IconButton(
//               icon: Icon(Icons.refresh),
//               onPressed: () {
//                 Provider.of<GameProvider>(context, listen: false).resetGame();
//               },
//             ),
//           ],
//         ),
//         body: Consumer<GameProvider>(
//           builder: (context, gameProvider, child) {
//             if (gameProvider.loading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (gameProvider.error) {
//               return Center(child: Text(gameProvider.errorMessage));
//             } else if (gameProvider.currentWordIndex >=
//                 gameProvider.words.length) {
//               WidgetsBinding.instance.addPostFrameCallback((_) {
//                 Navigator.pushReplacementNamed(context, '/results',
//                     arguments: gameProvider.score);
//               });
//               return Center(child: CircularProgressIndicator());
//             } else {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         'Spell the word:',
//                         style: TextStyle(fontSize: 24),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () => gameProvider.speakWord(
//                             gameProvider.words[gameProvider.currentWordIndex]),
//                         child: Text('Hear Word Again'),
//                       ),
//                       SizedBox(height: 20),
//                       TextField(
//                         controller: _controller,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Enter the word',
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () {
//                           gameProvider.checkAnswer(context, _controller.text);
//                           _controller.clear();
//                         },
//                         child: Text('Submit'),
//                       ),
//                       SizedBox(height: 20),
//                       Text('Score: ${gameProvider.score}'),
//                     ],
//                   ),
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:spell_it_game/game_provider.dart';
// import 'package:spell_it_game/history_widget.dart';

// class GamePage extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async => false, // Prevent back button
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: Text('Game Page'),
//         //   leading: Container(), // Hide back button
//         //   // actions: [
//         //   //   IconButton(
//         //   //     icon: Icon(Icons.refresh),
//         //   //     onPressed: () {
//         //   //       Provider.of<GameProvider>(context, listen: false).goToHome();
//         //   //       Navigator.pushReplacementNamed(context, '/');
//         //   //     },
//         //   //   ),
//         //   // ],
//         // ),
//         body: Consumer<GameProvider>(
//           builder: (context, gameProvider, child) {
//             if (gameProvider.loading) {
//               return Center(child: CircularProgressIndicator());
//             } else if (gameProvider.error) {
//               return Center(child: Text(gameProvider.errorMessage));
//             } else if (gameProvider.currentWordIndex >=
//                 gameProvider.words.length) {
//               WidgetsBinding.instance.addPostFrameCallback((_) {
//                 Navigator.pushReplacementNamed(context, '/results',
//                     arguments: gameProvider.score);
//               });
//               return Center(child: CircularProgressIndicator());
//             } else {
//               return Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         'Spell the word:',
//                         style: TextStyle(fontSize: 24),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () => gameProvider.speakWord(
//                             gameProvider.words[gameProvider.currentWordIndex]),
//                         child: Text('Hear Word Again'),
//                       ),
//                       SizedBox(height: 20),
//                       TextField(
//                         controller: _controller,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: 'Enter the word',
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () {
//                           gameProvider.checkAnswer(context, _controller.text);
//                           _controller.clear();
//                         },
//                         child: Text('Submit'),
//                       ),
//                       SizedBox(height: 20),
//                       Text('Score: ${gameProvider.score}'),
//                       SizedBox(height: 20),
//                       HistoryWidget(), // Add HistoryWidget here
//                     ],
//                   ),
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spell_it_game/game_provider.dart';
import 'package:spell_it_game/history_widget.dart';

class GamePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false, // Prevent back button
      child: Scaffold(
        appBar: AppBar(
          title: Text(' Made By Faisal Elazhary '),
          leading: Container(), // Hide back button
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                Provider.of<GameProvider>(context, listen: false).resetGame();
              },
            ),
          ],
        ),
        body: Consumer<GameProvider>(
          builder: (context, gameProvider, child) {
            if (gameProvider.loading) {
              return Center(child: CircularProgressIndicator());
            } else if (gameProvider.error) {
              return Center(child: Text(gameProvider.errorMessage));
            } else if (gameProvider.currentWordIndex >=
                gameProvider.words.length) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.pushReplacementNamed(context, '/results',
                    arguments: gameProvider.score);
              });
              return Center(child: CircularProgressIndicator());
            } else {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Spell the word:',
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(height: 20),
                      // ElevatedButton(
                      //   onPressed: () => gameProvider.speakWord(
                      //       gameProvider.words[gameProvider.currentWordIndex]),
                      //   child: Text('Hear Word Again'),

                      // ),
                      // IconButton(
                      //     onPressed: () {
                      //       gameProvider.speakWord(gameProvider
                      //           .words[gameProvider.currentWordIndex]);
                      //     },
                      //     icon: Icon(Icons.volume_up)),
                      TextButton.icon(
                        onPressed: () {
                          gameProvider.speakWord(gameProvider
                              .words[gameProvider.currentWordIndex]);
                        },
                        icon: Icon(Icons.volume_up),
                        label: Text('Hear Word Again'),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter the word',
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          gameProvider.checkAnswer(context, _controller.text);
                          _controller.clear();
                        },
                        child: Text('Submit'),
                      ),
                      SizedBox(height: 20),
                      Text('Score: ${gameProvider.score}'),
                      SizedBox(height: 20),
                      HistoryWidget(), // Add HistoryWidget here
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
