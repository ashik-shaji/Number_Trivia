import 'package:dartz/dartz.dart';
import 'package:trivia/core/errors/failures.dart';
import 'package:trivia/features/number_trivia/domian/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
