import 'package:brain_games/first_game/first_game_screen.dart';
import 'package:brain_games/memory_game/screen/home.dart';
import 'package:brain_games/tic_tac_toe/tic_tac_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[500]!,
        elevation: 0,
        title: const Center(
          child: Text('Games',
            style: TextStyle(
              color: Colors.white,

            ),
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue[500]!,
                Colors.blue[900]!,
                Colors.cyan[900]!,
                // Colors.blue[900]!,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
             Padding(
               padding:  const EdgeInsets.all(20.0),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context,
                     MaterialPageRoute(
                         builder: (context)=>const FirstGameScreen()),
                   );
                 },
                 child: Container(
                   height: 200,
                   width: double.infinity,
                   child: Padding(
                     padding:  const EdgeInsets.all(8.0),
                     child: Column(
                       children:  [
                         SizedBox(
                           height: 160,
                             child: Image.asset('assets/images/drag.png',)

                         ),
                         const Spacer(),
                         const Text(
                             'Drag and Drop Game',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.w600
                           ),

                         )
                       ],
                     ),
                   ),
                   margin: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15)

                   ),
                 ),
               ),
             ),
             Padding(
               padding:  const EdgeInsets.all(20.0),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context,
                     MaterialPageRoute(
                         builder: (context)=> Home()),
                   );
                 },
                 child: Container(
                   height: 200,
                   width: double.infinity,
                   child: Padding(
                     padding:  const EdgeInsets.all(8.0),
                     child: Column(
                       children:  [
                         SizedBox(
                           height: 160,
                             child: Image.asset('assets/images/memory.png',)

                         ),
                         const Spacer(),
                         const Text(
                             'Memory Game',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.w600
                           ),

                         )
                       ],
                     ),
                   ),
                   margin: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15)

                   ),
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: InkWell(
                 onTap: (){
                   Navigator.push(context,
                     MaterialPageRoute(
                         builder: (context)=> MainPage()),
                   );
                 },
                 child: Container(
                   height: 200,
                   width: double.infinity,
                   child: Padding(
                     padding:  const EdgeInsets.all(8.0),
                     child: Column(
                       children:  [
                         SizedBox(
                           height: 160,
                             child: Image.asset('assets/images/tic-tac-toe.png',)

                         ),
                         const Spacer(),
                         const Text(
                             'Tic Tac Toe Game',
                           style: TextStyle(
                             color: Colors.black,
                             fontSize: 18,
                             fontWeight: FontWeight.w600
                           ),

                         )
                       ],
                     ),
                   ),
                   margin: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15)

                   ),
                 ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
