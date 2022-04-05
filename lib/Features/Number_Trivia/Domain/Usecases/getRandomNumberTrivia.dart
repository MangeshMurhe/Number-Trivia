
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:number_trivia_tdd/Core/Error/failures.dart';
import 'package:number_trivia_tdd/Core/Usecase/usecase.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/RepositoryContracts/repositoryContracts.dart';

class GetRandomNumberUseCase implements Usecase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberUseCase(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }

}

class NoParams extends Equatable {

}