import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:number_trivia_tdd/Core/Error/failures.dart';
import 'package:number_trivia_tdd/Core/Usecase/usecase.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/RepositoryContracts/repositoryContracts.dart';

class GetConcreteNumberUseCase implements Usecase<NumberTrivia, Params> {
 final NumberTriviaRepository repository;

 GetConcreteNumberUseCase(this.repository);

 @override
 Future<Either<Failure, NumberTrivia>> call(Params params) async {
  return await repository.getConcreteNumberTrivia(params.number);
 }
}

class Params extends Equatable {
 final int number;

 Params({required this.number}) : super([number]);
}