class QuizQuestion{
  const QuizQuestion(this.question,this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    var arr = List.of(answers);
    arr.shuffle();
    return arr;
  }
}