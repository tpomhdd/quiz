part of 'answer_cubit.dart';

@immutable
abstract class AnswerState {}

class AnswerInitial extends AnswerState {}
class AnswerError extends AnswerState {
  final String errMessage;
  AnswerError(this.errMessage);


}
class AnswerLoading extends AnswerState {}


class Answertrue extends AnswerState {
  final List<Answer> myAnswer;

  Answertrue(this.myAnswer);

}