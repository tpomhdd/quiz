class Question_model {
  String? id;
  String? question;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answertrue;

  Question_model(
      {this.id,
        this.question,
        this.answer1,
        this.answer2,
        this.answer3,
        this.answertrue});

  Question_model.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['Question'];
    answer1 = json['Answer1'];
    answer2 = json['Answer2'];
    answer3 = json['Answer3'];
    answertrue = json['Answertrue'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Question'] = this.question;
    data['Answer1'] = this.answer1;
    data['Answer2'] = this.answer2;
    data['Answer3'] = this.answer3;
    data['Answertrue'] = this.answertrue;
    return data;
  }
}