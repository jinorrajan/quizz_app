import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knoweldge_quizz/models/question_models.dart';
import 'package:knoweldge_quizz/screens/home_page.dart';

class ContractQuestion extends StatefulWidget {
  const ContractQuestion({super.key});

  @override
  State<ContractQuestion> createState() => _ContractQuestionState();
}

class _ContractQuestionState extends State<ContractQuestion> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "General Knowledge Questions",
            style: GoogleFonts.lato(
              color: Color(0xff82A3C6),
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
          
        ],
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Questions ${currentQuestionIndex + 1}/${questionList.length.toString()}",
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
            questionList[currentQuestionIndex].questionText,
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

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
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
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
          }

          setState(() {
            selectedAnswer = answer;
          });
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
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
            _showScoreDialog(context);
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
        child: Text(isLastQuestion ? "Submit" : "Next"),
      ),
    );
  }
  void _showScoreDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return _buildScoreDialog();
    },
  );
}
 Widget _buildScoreDialog() {
  bool isPassed = false;

  if(score >= questionList.length*0.6){
//pass if 60%
isPassed = true;
  }
  String title = isPassed ? "passed" : "Failed";

  return Column(
    
    children: [
      SizedBox(height: 300,),
      AlertDialog(
        title: Text(
          title + " | Score is $score",
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
                  currentQuestionIndex =0;
                  score = 0;
                  selectedAnswer = null;
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
