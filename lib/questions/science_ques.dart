import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knoweldge_quizz/models/science_models.dart';
import 'package:knoweldge_quizz/screens/home_page.dart';

class ScienceQuestion extends StatefulWidget {
  const ScienceQuestion({super.key});

  @override
  State<ScienceQuestion> createState() => _ScienceQuestionState();
}

class _ScienceQuestionState extends State<ScienceQuestion> {

   List<Questions> questionLists = getQuestionss();
  int currentQuestionIndexs = 0;
  int scores = 0;
  Answers? selectedAnswers;
  @override
  Widget build(BuildContext context) {
    return  Container(
      //background gradient color
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF233142), Color(0xFF384B62)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Science Knowledge Questions",
            style: GoogleFonts.lato(
              color: Color(0xff82A3C6),
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
          _questionWidgets(),
          _answerLists(),
          _nextButton(),
          
        ],
      ),

    );
  }
    _questionWidgets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Questions ${currentQuestionIndexs + 1}/${questionLists.length.toString()}",
            style: GoogleFonts.lato(
              color: const Color(0xff82A3C6),
              fontSize: 20,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color(0xff82A3C6),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionLists[currentQuestionIndexs].questionTexts,
            style: GoogleFonts.lato(
              color: Color(0xFF233142),
              fontSize: 16,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.none,
            ),
          ),
        )
      ],
    );
  }

  
  _answerLists() {
    return Column(
      children: questionLists[currentQuestionIndexs]
          .answersLists
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answers answers) {
    bool isSelected = answers == selectedAnswers;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answers.answerTexts),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          primary: isSelected
              ? Color(0xFF233142)
              : Color.fromARGB(255, 218, 235, 255),
          onPrimary: isSelected
              ? Color.fromARGB(255, 224, 239, 255)
              : Color(0xFF233142),
        ),
        onPressed: () {
          if (selectedAnswers == null) {
            if (answers.isCorrects) {
              scores++;
            }
          }

          setState(() {
            selectedAnswers = answers;
          });
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndexs == questionLists.length - 1) {
      isLastQuestion = true;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xFF233142),
          backgroundColor: const Color.fromARGB(255, 74, 161, 255),
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display Score
            _showScoreDialogs(context);
          } else {
            setState(() {
              selectedAnswers = null;
              currentQuestionIndexs++;
            });
          }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }
  void _showScoreDialogs(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return _buildScoreDialogs();
    },
  );
}
 Widget _buildScoreDialogs() {
  bool isPassed = false;

  if(scores >= questionLists.length*0.6){
//pass if 60%
isPassed = true;
  }
  String title = isPassed ? "passed" : "Failed";

  return Column(
    
    children: [
      SizedBox(height: 300,),
      AlertDialog(
        title: Text(
          title + " | Score is $scores",
          style: GoogleFonts.lato(color: isPassed ? Colors.green : Colors.orangeAccent),
        ),
        content: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton( child: Text("Restrat"),onPressed: (){
                Navigator.pop(context);
                setState(() {
                  currentQuestionIndexs =0;
                  scores = 0;
                  selectedAnswers = null;
                });
              },
              
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
            }, child: Text("Home")),
          )
        ],
        
      ),

    ],
  );
}
}