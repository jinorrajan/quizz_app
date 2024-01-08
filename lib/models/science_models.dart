class Questions {
  final String questionTexts;
  final List<Answers> answersLists;

  Questions(this.questionTexts, this.answersLists);
}

class Answers {
  final String answerTexts;
  final bool isCorrects;

  Answers(this.answerTexts, this.isCorrects);
}

List<Questions> getQuestionss() {
  List<Questions> list = [];

  list.add(
    Questions(
      "What is the chemical symbol for the element gold?",
      [
        Answers("Au", true),
        Answers("Ag", false),
        Answers("Fe", false),
        Answers("Cu", false),
      ],
    ),
  );

  list.add(
    Questions(
      "Which planet is known as the 'Red Planet'?",
      [
        Answers("Venus", false),
        Answers("Mars", true),
        Answers("Jupiter", false),
        Answers("Saturn", false),
      ],
    ),
  );

  list.add(
    Questions(
      "What is the powerhouse of the cell?",
      [
        Answers("Nucleus", false),
        Answers("Mitochondria", true),
        Answers("Ribosome", false),
        Answers(" Endoplasmic reticulum", false),
      ],
    ),
  );

  list.add(
    Questions(
      "Who developed the theory of general relativity?",
      [
        Answers(" Isaac Newton", false),
        Answers("Galileo Galilei", false),
        Answers("Albert Einstein", true),
        Answers("Stephen Hawking", false),
      ],
    ),
  );

  list.add(
    Questions(
      " What is the chemical formula for water?",
      [
        Answers("H2O", false),
        Answers("CO2", false),
        Answers("O2", true),
        Answers("CH4", false),
      ],
    ),
  );
  return list;
}
