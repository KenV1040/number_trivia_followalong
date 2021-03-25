import 'package:dartz/dartz.dart';

import '../error/failures.dart';

abstract class UseCase <Type, Params> {
  // We don't currently need params. But this future-proofs the interface. Because if this
  // abstract function needs to do something, it won't be able to access the variables, so using params
  // allows it to access it from here.
  Future<Either<Failure, Type>> call(Params params);
}