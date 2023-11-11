import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/model/Question.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit(this._mydata) : super(QuestionInitial());
  final  mydata _mydata;
  Future<void> mydatafetch() async {
    final String txt;
    emit(QuestionLoading());
    var result = await _mydata.getQuestion();
    List<Question_model> MyQuestion;
    result.fold((error){
      emit(QuestionError(error.errMessage));
    }, (myQuestion) {
      emit(Questiontrue(myQuestion));
    });

  }

}
