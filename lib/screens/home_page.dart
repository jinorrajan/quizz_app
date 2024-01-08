import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knoweldge_quizz/questions/contractques.dart';
import 'package:knoweldge_quizz/questions/geograph_question.dart';
import 'package:knoweldge_quizz/questions/politican_question.dart';
import 'package:knoweldge_quizz/questions/science_ques.dart';
import 'package:knoweldge_quizz/questions/technology_ques.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF233142), Color(0xFF384B62)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: Column(
        children: [
          AppBar(
            backgroundColor: Color(0xff82A3C6),
            title: const SizedBox(
              width: 250,
              height: 55,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    contentPadding: EdgeInsets.only(bottom: 11, left: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(27),
                    bottomLeft: Radius.circular(27))),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Image.asset("assets/images/boy.jpg"),
              ),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear_all),
                  )),
            ],
          ),


          const SizedBox(
            height: 60,
          ),

          
          //First Container
          SizedBox(
            height: 70,
            width: 350,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContractQuestion(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff82A3C6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/contract.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "General Knowledge",
                      style: GoogleFonts.lato(
                          fontSize: 23,
                          color: const Color(0xFF233142),
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
            ),
          ),
          
          const SizedBox(
            height: 50,
          ),


          //Second Container
          SizedBox(
            height: 70,
            width: 350,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScienceQuestion(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff82A3C6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/science.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Science Knowledge",
                      style: GoogleFonts.lato(
                          fontSize: 23,
                          color: const Color(0xFF233142),
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
            ),
          ),


           const SizedBox(
            height: 50,
          ),


          //Third Container
          SizedBox(
            height: 70,
            width: 350,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TechQuestion(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff82A3C6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/technology.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Technology Knowledge",
                      style: GoogleFonts.lato(
                          fontSize: 23,
                          color: const Color(0xFF233142),
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
            ),
          ),


           const SizedBox(
            height: 50,
          ),


          //Fourth Container
          SizedBox(
            height: 70,
            width: 350,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GeoGrahyQuestion(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff82A3C6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/geography.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Geography Knowledge",
                      style: GoogleFonts.lato(
                          fontSize: 23,
                          color: const Color(0xFF233142),
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
            ),
          ),
          
           const SizedBox(
            height: 50,
          ),

          
          //Fifth Container
          SizedBox(
            height: 70,
            width: 350,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PoliticanQuestion(),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff82A3C6),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/images/politician.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Political Knowledge",
                      style: GoogleFonts.lato(
                          fontSize: 23,
                          color: const Color(0xFF233142),
                          decoration: TextDecoration.none),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
