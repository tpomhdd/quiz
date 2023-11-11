import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quzi/data/Client/mydata.dart';
import 'package:quzi/data/model/Answer.dart';

part 'answer_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit(this._mydata) : super(AnswerInitial());
  final  mydata _mydata;
  Future<void> mydatafetch() async {
    final String txt;
    emit(AnswerLoading());
    var result = await _mydata.getAnswer();
    List<Answer> MyAnswer;
    result.fold((error){
      emit(AnswerError(error.errMessage));
    }, (myAnswer) {
      emit(Answertrue(myAnswer));
    });

  }

}
