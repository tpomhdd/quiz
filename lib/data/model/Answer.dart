class Answer {

  String? id;
  String? usernane;
  String? answer;
  String? qnId;

  Answer(
      {

        this.id,
        this.usernane,
        this.answer,
        this.qnId});

  Answer.fromJson(Map<String, dynamic> json) {

    id = json['id'];
    usernane = json['usernane'];
    answer = json['Answer'];
    qnId = json['qn_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['usernane'] = this.usernane;
    data['Answer'] = this.answer;
    data['qn_id'] = this.qnId;
    return data;
  }
}