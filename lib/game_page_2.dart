import 'package:flutter/material.dart';
import 'package:tic_tac_toe/draw.dart';
import 'package:tic_tac_toe/winner.dart';

class game_page_2 extends StatefulWidget {
  final String player1, player2;

  game_page_2({Key? key, required this.player1, required this.player2})
      : super(key: key);

  @override
  State<game_page_2> createState() => _game_page_2State();
}
bool win =false;
List<String> chars = List.filled(9, ' ');
List<Color> colors_ = List.filled(9, Colors.blue);
List<bool> visited = List.filled(9, false);
late String player1, player2;
int cnt = 0;

class _game_page_2State extends State<game_page_2> {
  @override
  Widget build(BuildContext context) {
    player1 = widget.player1;
    player2 = widget.player2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('tic tac toe'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(162, 3, 113, 82),
                Color.fromARGB(161, 86, 191, 236),
                Color.fromARGB(255, 107, 43, 186),
              ],
              stops: [
                0.3,
                0.4,
                0.8,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.player1,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                    ),
                  ),
                  Text(
                    '  VS  ',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                    ),
                  ),
                  Text(
                    widget.player2,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.indigo,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                width: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[0]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 0);
                        setState(() {});
                      },
                      child: Text(
                        chars[0],
                        style: TextStyle(fontSize: 50),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[1]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 1);
                        setState(() {});
                      },
                      child: Text(
                        chars[1],
                        style: TextStyle(fontSize: 50),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[2]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 2);
                        setState(() {});
                      },
                      child: Text(
                        chars[2],
                        style: TextStyle(fontSize: 50),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[3]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 3);
                        setState(() {});
                      },
                      child: Text(
                        chars[3],
                        style: TextStyle(fontSize: 50),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[4]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 4);
                        setState(() {});
                      },
                      child: Text(
                        chars[4],
                        style: TextStyle(fontSize: 50),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[5]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 5);
                        setState(() {});
                      },
                      child: Text(
                        chars[5],
                        style: TextStyle(fontSize: 50),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[6]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 6);
                        setState(() {});
                      },
                      child: Text(
                        chars[6],
                        style: TextStyle(fontSize: 50),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[7]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 7);
                        setState(() {});
                      },
                      child: Text(
                        chars[7],
                        style: TextStyle(fontSize: 50),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(colors_[8]),
                        minimumSize: MaterialStateProperty.all(Size(75, 75)),
                      ),
                      onPressed: () {
                        chk(context, 8);
                        setState(() {});
                      },
                      child: Text(
                        chars[8],
                        style: TextStyle(fontSize: 50),
                      )),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    cnt = 0;
                    chars = List.filled(9, ' ');
                    visited = List.filled(9, false);
                    colors_ = List.filled(9, Colors.blue);
                    setState(() {});
                  },
                  child: Text(
                    'reset',
                    style: TextStyle(fontSize: 40),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void chk(BuildContext context, int idx) {
  if (visited[idx]||win) {
    return;
  }
  visited[idx] = true;
  if (cnt & 1 == 1) {
    chars[idx] = 'X';
    colors_[idx]=Colors.cyanAccent;
  } else {
    chars[idx] = 'O';
    colors_[idx]=Colors.pinkAccent;
  }
  who_win(context);
  cnt++;
  if (cnt == 9) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const DrawScreen()),
    );
  }
}

void who_win(BuildContext context) {
  String winner = ' ';

  for (int i = 0; i < 9; i += 3) {
    if (chars[i] != ' ' &&
        chars[i] == chars[i + 1] &&
        chars[i] == chars[i + 2]) {
      colors_[i]=Colors.deepPurple;
      colors_[i+1]=Colors.deepPurple;
      colors_[i+2]=Colors.deepPurple;
      if (chars[i] == 'X')
        winner = 'X';
      else
        winner = 'O';
      break;
    }
  }

  for (int i = 0; i < 3; i++) {
    if (chars[i] != ' ' &&
        chars[i] == chars[i + 3] &&
        chars[i] == chars[i + 6]) {
      colors_[i]=Colors.deepPurple;
      colors_[i+3]=Colors.deepPurple;
      colors_[i+6]=Colors.deepPurple;
      if (chars[i] == 'X')
        winner = 'X';
      else
        winner = 'O';
      break;
    }
  }

  if (chars[0] != ' ' && chars[0] == chars[4] && chars[0] == chars[8]) {
    colors_[0]=Colors.deepPurple;
    colors_[4]=Colors.deepPurple;
    colors_[8]=Colors.deepPurple;
    if (chars[0] == 'X')
      winner = 'X';
    else
      winner = 'O';
  }

  if (chars[2] != ' ' && chars[2] == chars[4] && chars[2] == chars[6]) {
    colors_[2]=Colors.deepPurple;
    colors_[4]=Colors.deepPurple;
    colors_[6]=Colors.deepPurple;
    if (chars[2] == 'X')
      winner = 'X';
    else
      winner = 'O';
  }
  if (winner == 'X')
    winner = player2;
  else if (winner == 'O') winner = player1;
  if (winner != ' ') {
    win=true;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WinnerScreen(winner: winner),
      ),
    );
  }
}
