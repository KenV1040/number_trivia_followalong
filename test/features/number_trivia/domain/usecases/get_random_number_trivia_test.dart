import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia2/core/usecases/usecase.dart';
import 'package:number_trivia2/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia2/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia2/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

// Mock the Number Trivia Repository
class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

// Start off any test file with a main function
void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  // setUp runs before any tests, and initialises any needed variables
  setUp(() {
    //instantiate these variables
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  final tNumberTrivia = NumberTrivia(number: 1, text: 'test'); // NumberTrivia should be returned from the mockRepository after supplying it with a number 

  test (
    'Should get trivia from repository',
    () async {
      // arrange
      when(mockNumberTriviaRepository.getRandomNumberTrivia())
      .thenAnswer((_) async =>  Right(tNumberTrivia));
      
      // act
      final result = await usecase(NoParams());

      // assert
      expect(result, Right(tNumberTrivia));
      
      verify(mockNumberTriviaRepository.getRandomNumberTrivia());
      // Ensures the tNumber variable was passed and not some hard coded number.
      verifyNoMoreInteractions(mockNumberTriviaRepository);
      // Ensures no more interactions is done on the repository.  
        
      // Arrange is the theory part, where you say this is what should happen.
      // Act is the actual action being performed
      // Assert tells you that it expects the act result to match the assert result 
    }
  );
}



// Note: TDD works in Red, Gree, Refactor phases
// When writing a test, it is expected to have red squigly lines everywhere, because the test for the function you are writing doesn't exist yet.