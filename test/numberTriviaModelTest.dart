import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Data/Models/NumberTriviaModel.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';

import 'Fixtures/fixtureReader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1,  text: 'Test Text');
 test('should be subclass of number trivia entity',
         () async {
        expect(tNumberTriviaModel, isA<NumberTrivia>());
 });

 group("fromJason", () {
   test(
     'should return a valid model when the JSON number is an integer',
         () async {
       // arrange
       final Map<String, dynamic> jsonMap =
       json.decode(fixture('trivia.json'));
       // act
       final result = NumberTriviaModel.fromJson(jsonMap);
       // assert
       expect(result, tNumberTriviaModel);
     },
   );

   test(
     'should return a valid model when the JSON number is DOUBLE',
         () async {
       // arrange
       final Map<String, dynamic> jsonMap =
       json.decode(fixture('triviaDouble.json'));
       // act
       final result = NumberTriviaModel.fromJson(jsonMap);
       // assert
       expect(result, tNumberTriviaModel);
     },
   );
 });

  group("fromJason", () {
    test(
      'should return a valid model when the JSON number is DOUBLE',
          () async {
        // arrange
        final Map<String, dynamic> jsonMap =
        json.decode(fixture('triviaDouble.json'));
        // act
        final result = NumberTriviaModel.fromJson(jsonMap);
        // assert
        expect(result, tNumberTriviaModel);
      },
    );
  });
  
  group('toJson', () { 
    test('should return a json map containing proper data', () async {
      final result = tNumberTriviaModel.toJson();
      final expectedMap = {
        "text": "Test Text",
        "number": 1,
      };
      expect(result, expectedMap);
    }
    );
  });
}