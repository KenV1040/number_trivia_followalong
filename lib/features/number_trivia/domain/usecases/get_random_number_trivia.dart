import 'package:equatable/equatable.dart';
import 'package:number_trivia2/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:number_trivia2/core/usecases/usecase.dart';
import 'package:number_trivia2/features/number_trivia/domain/entities/number_trivia.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}

class NoParams extends Equatable {}