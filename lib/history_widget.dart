// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:spell_it_game/game_provider.dart';

// class HistoryWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<GameProvider>(
//       builder: (context, gameProvider, child) {
//         return DataTable(
//           columns: [
//             DataColumn(label: Text('Word')),
//             DataColumn(label: Text('Actions')),
//           ],
//           rows: List<DataRow>.generate(
//             gameProvider.currentWordIndex,
//             (index) {
//               String word = gameProvider.words[index];
//               return DataRow(cells: [
//                 DataCell(Text(word)),
//                 DataCell(
//                   IconButton(
//                     icon: Icon(Icons.volume_up),
//                     onPressed: () {
//                       gameProvider.speakWord(word);
//                     },
//                   ),
//                 ),
//               ]);
//             },
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spell_it_game/game_provider.dart';

class HistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameProvider>(
      builder: (context, gameProvider, child) {
        return DataTable(
          columns: [
            DataColumn(label: Text('Word')),
            DataColumn(label: Text('Actions')),
          ],
          rows: List<DataRow>.generate(
            gameProvider.currentWordIndex,
            (index) {
              String word = gameProvider.words[index];
              bool isCorrect = gameProvider.wordStatuses[index];
              return DataRow(cells: [
                DataCell(
                  Text(
                    word,
                    style: TextStyle(
                      color: isCorrect ? Colors.green : Colors.red,
                    ),
                  ),
                ),
                DataCell(
                  isCorrect
                      ? IconButton(
                          icon: Icon(Icons.volume_up),
                          onPressed: () {
                            gameProvider.speakWord(word);
                          },
                        )
                      : Icon(Icons.volume_off),
                ),
              ]);
            },
          ),
        );
      },
    );
  }
}
