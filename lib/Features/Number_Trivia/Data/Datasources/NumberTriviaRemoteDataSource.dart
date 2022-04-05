import 'package:number_trivia_tdd/Features/Number_Trivia/Data/Models/NumberTriviaModel.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number);
  Future<NumberTriviaModel> getRandomNumberTrivia();
}