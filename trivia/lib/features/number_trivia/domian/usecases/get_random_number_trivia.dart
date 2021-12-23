import 'package:dartz/dartz.dart';
import 'package:trivia/core/errors/failures.dart';
import 'package:trivia/core/usecases/usecase.dart';
import 'package:trivia/features/number_trivia/domian/entities/number_trivia.dart';
import 'package:trivia/features/number_trivia/domian/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
