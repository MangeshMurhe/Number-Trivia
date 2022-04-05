
import 'package:dartz/dartz.dart';
import 'package:number_trivia_tdd/Core/Error/failures.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';

abstract class NumberTriviaRepository {
 Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
 Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}