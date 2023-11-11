part of 'question_cubit.dart';

@immutable
abstract class QuestionState {}



class QuestionInitial extends QuestionState {}
class QuestionError extends QuestionState {
  final String errMessage;
  QuestionError(this.errMessage);


}
class QuestionLoading extends QuestionState {}


class Questiontrue extends QuestionState {
  final List<Question_model> myQuestion;

  Questiontrue(this.myQuestion);

}