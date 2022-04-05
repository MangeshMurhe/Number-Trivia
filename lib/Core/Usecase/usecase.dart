
import 'package:dartz/dartz.dart';
import 'package:number_trivia_tdd/Core/Error/failures.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';

abstract class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}