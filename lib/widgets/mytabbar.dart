import 'package:flutter/material.dart';

class Mytabbar extends StatelessWidget {
  const Mytabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          tabs: [
            Tab(
              text: "PC",
            ),
            Tab(
              text: "PlayStation",
            ),
            Tab(
              text: "Nintendo",
            ),
            Tab(
              text: "CounterStrike",
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: Center(
                          child: Text("PC"),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: Center(
                          child: Text("PC"),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: Center(
                          child: Text("PC"),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: Center(
                          child: Text("PC"),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 300,
                        color: Colors.blue,
                        child: Center(
                          child: Text("PC"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.red,
                  child: Center(
                    child: Text("PLAY STATION"),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.green,
                  child: Center(
                    child: Text("NINTENTO"),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.orange,
                  child: Center(
                    child: Text("CS 1.6"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
