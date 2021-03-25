import 'package:mockito/mockito.dart';
import 'package:number_trivia2/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia2/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

// Mock the Number Trivia Repository
class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

// Start off any test file with a main function
void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  // setUp runs before any tests, and initialises any needed variables
  setUp(() {
    //instantiate these variables
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });
}



// Note: TDD works in Red, Gree, Refactor phases
// When writing a test, it is expected to have red squigly lines everywhere, because the test for the function you are writing doesn't exist yet.