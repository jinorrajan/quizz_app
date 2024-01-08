class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(
    Question(
      "What is the capital city of India?",
      [
        Answer("Mumbai", false),
        Answer("Kolkata", false),
        Answer("New Delhi", true),
        Answer("Chennai", false),
      ],
    ),
  );

  list.add(
    Question(
      "Which Indian festival is known as the Festival of Lights",
      [
        Answer("Diwali", true),
        Answer("Holi", false),
        Answer("Navratri", false),
        Answer("Eid", false),
      ],
    ),
  );

  list.add(
    Question(
      "Which river is known as the 'Ganga' in India?",
      [
        Answer("Yamuna", false),
        Answer("Brahmaputra", false),
        Answer("Godavari", false),
        Answer("Ganges", true),
      ],
    ),
  );

  list.add(
    Question(
      "Who is considered the Father of the Nation in India?",
      [
        Answer("Jawaharlal Nehru", false),
        Answer("Sardar Patel", false),
        Answer("Mahatma Gandhi", true),
        Answer("Subhas Chandra Bose", false),
      ],
    ),
  );

  list.add(
    Question(
      " What is the national currency of India?",
      [
        Answer("Rupiah", false),
        Answer("Ringgit", false),
        Answer("Rupee", true),
        Answer("Baht", false),
      ],
    ),
  );
  return list;
}
