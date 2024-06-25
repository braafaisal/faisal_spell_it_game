import 'package:flutter/material.dart';
import 'package:spell_it_game/game.dart';
import 'package:spell_it_game/word_list_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard '),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Words'),
              Tab(text: 'Game'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            WordListPage(),
            GamePage(),
          ],
        ),
      ),
    );
  }
}
