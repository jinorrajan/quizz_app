class Questionssss {
  final String questionTextssss;
  final List<Answerssss> answersListssss;

  Questionssss(this.questionTextssss, this.answersListssss);
}

class Answerssss {
  final String answerTextssss;
  final bool isCorrectssss;

  Answerssss(this.answerTextssss, this.isCorrectssss);
}

List<Questionssss> getQuestionsssss() {
  List<Questionssss> list = [];

  list.add(
    Questionssss(
      "What is the highest court in the Indian judicial system?",
      [
        Answerssss("High Court", false),
        Answerssss("Supreme Court", true),
        Answerssss("District Court", false),
        Answerssss("Constitutional Court", false),
      ],
    ),
  );

  list.add(
    Questionssss(
      "Who is the Chief Justice of India as of the latest information available?",
      [
        Answerssss("Sharad Arvind Bobde", false),
        Answerssss("N.V. Ramana", true),
        Answerssss("Ranjan Gogoi", false),
        Answerssss("Dipak Misra", false),
      ],
    ),
  );

  list.add(
    Questionssss(
      "Which constitutional amendment introduced the Goods and Services Tax (GST) in India?",
      [
        Answerssss("101st Amendment", false),
        Answerssss("122nd Amendment", true),
        Answerssss("73rd Amendment", false),
        Answerssss("86th Amendment", false),
      ],
    ),
  );

  list.add(
    Questionssss(
      "What is the minimum voting age in general elections in India?",
      [
        Answerssss("16 years", false),
        Answerssss("18 years", true),
        Answerssss("21 years", false),
        Answerssss("25 years", false),
      ],
    ),
  );

  list.add(
    Questionssss(
      "How often are general elections held for the Lok Sabha in India?",
      [
        Answerssss("Every 3 years", false),
        Answerssss("Every 4 years", false),
        Answerssss("Every 5 years", true),
        Answerssss("Every 6 years", false),
      ],
    ),
  );
  return list;
}
