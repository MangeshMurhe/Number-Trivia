// ignore: file_names


import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({required String text, required int number}): super(number: number, numberText: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json['text'],
      number: (json['number'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': numberText,
      'number': number,
    };
  }
}