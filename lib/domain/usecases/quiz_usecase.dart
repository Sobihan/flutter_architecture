import 'package:flutter_architecture/data/repository/quiz_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_architecture/domain/entities/question.dart';
import 'package:flutter_architecture/domain/repository/quiz_repository.dart';

final quizUseCaseProvider = Provider<QuizUseCase>(
    (ref) => QuizUseCase(ref.read(quizRepositoryProvider)));

class QuizUseCase {
  final QuizRepository _repository;

  QuizUseCase(this._repository);

  Future<List<Question>> getQuestions() =>
      _repository.getQuestions(numQuestions: 5, categoryId: 31);
}
