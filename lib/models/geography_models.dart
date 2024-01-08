class Questionsss {
  final String questionTextsss;
  final List<Answersss> answersListsss;

  Questionsss(this.questionTextsss, this.answersListsss);
}

class Answersss {
  final String answerTextsss;
  final bool isCorrectsss;

  Answersss(this.answerTextsss, this.isCorrectsss);
}

List<Questionsss> getQuestionssss() {
  List<Questionsss> list = [];

  list.add(
    Questionsss(
      "Which river is the longest in the world?",
      [
        Answersss("Amazon River", false),
        Answersss("Nile River", true),
        Answersss("Yangtze River", false),
        Answersss("Mississippi River", false),
      ],
    ),
  );

  list.add(
    Questionsss(
      "What is the capital city of Japan?",
      [
        Answersss("Seoul", false),
        Answersss("Beijing", false),
        Answersss("Tokyo", true),
        Answersss("Bangkok", false),
      ],
    ),
  );

  list.add(
    Questionsss(
      "Which mountain range separates Europe and Asia?",
      [
        Answersss(" Rocky Mountains", false),
        Answersss("Alps", false),
        Answersss("Himalayas", false),
        Answersss("Ural Mountains", true),
      ],
    ),
  );

  list.add(
    Questionsss(
      "In which continent is the Sahara Desert located?",
      [
        Answersss("Africa", true),
        Answersss("Asia", false),
        Answersss("South America", false),
        Answersss("Australia", false),
      ],
    ),
  );

  list.add(
    Questionsss(
      "What is the capital city of Australia?",
      [
        Answersss("Sydney", false),
        Answersss("Melbourne", false),
        Answersss("Canberra", true),
        Answersss("Brisbane", false),
      ],
    ),
  );
  return list;
}
