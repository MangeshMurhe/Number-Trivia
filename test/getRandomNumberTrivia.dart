

import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Entities/numberTrivia.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/RepositoryContracts/repositoryContracts.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Usecases/getConcreteNumberUsecase.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia_tdd/Features/Number_Trivia/Domain/Usecases/getRandomNumberTrivia.dart';


class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

void main() {
  late GetRandomNumberUseCase usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberUseCase(mockNumberTriviaRepository);
  });

  final tNumberTrivia = NumberTrivia(number: 1, numberText: 'test');

  test(
    'should get trivia from the repository',
        () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When getConcreteNumberTrivia is called with any argument, always answer with
      // the Right "side" of Either containing a test NumberTrivia object.
      when(mockNumberTriviaRepository.getRandomNumberTrivia())
          .thenAnswer((_) async => Right(tNumberTrivia));

      final result = await usecase(NoParams());
      expect(result, Right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getRandomNumberTrivia());
    },
  );
}

