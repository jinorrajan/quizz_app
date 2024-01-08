import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knoweldge_quizz/models/polatic_models.dart';
import 'package:knoweldge_quizz/screens/home_page.dart';

class PoliticanQuestion extends StatefulWidget {
  const PoliticanQuestion({super.key});

  @override
  State<PoliticanQuestion> createState() => _PoliticanQuestionState();
}

class _PoliticanQuestionState extends State<PoliticanQuestion> {

   List<Questionssss> questionList = getQuestionsssss();
  int currentQuestionIndex = 0;
  int score= 0;
  Answerssss? selectedAnswersss;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            "Political Knowledge Questions",
            style: GoogleFonts.lato(
              color: Color(0xff82A3C6),
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
          _questionWidgetss(),
          _answerListss(),
          _nextButtons(),
          
        ],
      ),

    );
  }
    _questionWidgetss() {
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
            questionList[currentQuestionIndex].questionTextssss,
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

  
  _answerListss() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersListssss
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answerssss answers) {
    bool isSelected = answers == selectedAnswersss;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: isSelected
              ? const Color.fromARGB(255, 224, 239, 255)
              : const Color(0xFF233142), backgroundColor: isSelected
              ? const Color(0xFF233142)
              : const Color.fromARGB(255, 218, 235, 255), shape: StadiumBorder(),
        ),
        onPressed: () {
          if (selectedAnswersss == null) {
            if (answers.isCorrectssss) {
              score++;
            }
          }

          setState(() {
            selectedAnswersss = answers;
          });
        },
        child: Text(answers.answerTextssss),
      ),
    );
  }

  _nextButtons() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return SizedBox(
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
              selectedAnswersss = null;
              currentQuestionIndex++;
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

  if(score >= questionList.length*0.6){
//pass if 60%
isPassed = true;
  }
  String title = isPassed ? "passed" : "Failed";

  return Column(
    
    children: [
      const SizedBox(height: 300,),
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
                  selectedAnswersss = null;
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
            }, child: const Text("Home")),
          )
        ],
        
      ),

    ],
  );
  }
}