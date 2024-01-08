class Questionss {
  final String questionTextss;
  final List<Answerss> answersListss;

  Questionss(this.questionTextss, this.answersListss);
}

class Answerss {
  final String answerTextss;
  final bool isCorrectss;

  Answerss(this.answerTextss, this.isCorrectss);
}

List<Questionss> getQuestionsss() {
  List<Questionss> list = [];

  list.add(
    Questionss(
      "Who is the co-founder of Microsoft Corporation?",
      [
        Answerss("Steve Jobs", false),
        Answerss(" Bill Gates", true),
        Answerss("Mark Zuckerberg", false),
        Answerss("Larry Page", false),
      ],
    ),
  );

  list.add(
    Questionss(
      "What does the acronym 'URL' stand for in the context of the internet?",
      [
        Answerss("Universal Resource Locator", false),
        Answerss("Uniform Resource Locator", true),
        Answerss("Unique Resource Locator", false),
        Answerss("Universal Reference Locator", false),
      ],
    ),
  );

  list.add(
    Questionss(
      "Which programming language was developed by James Gosling at Sun Microsystems in the 1990s?",
      [
        Answerss("Python", false),
        Answerss("Java", true),
        Answerss(" C++", false),
        Answerss("Ruby", false),
      ],
    ),
  );

  list.add(
    Questionss(
      " What does 'AI' stand for in the field of technology?",
      [
        Answerss("Automated Integration", false),
        Answerss("Artificial Intelligence", true),
        Answerss("Advanced Interface", false),
        Answerss("Augmented Interaction", false),
      ],
    ),
  );

  list.add(
    Questionss(
      "Who is the CEO of Tesla, Inc.?",
      [
        Answerss("Elon Musk", true),
        Answerss("Jeff Bezos", false),
        Answerss("Tim Cook", false),
        Answerss("Sundar Pichai", false),
      ],
    ),
  );
  return list;
}
