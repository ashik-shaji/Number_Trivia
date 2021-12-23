import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:trivia/features/number_trivia/data/models/number_trivia_models.dart';
import 'package:trivia/features/number_trivia/domian/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test text');

  test('should be a subclass of NumberTrivia entity', () async {
    //Assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('from Json', () {
    test('should return a valid model when the JSON number is an integer',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });

    test(
        'should return a valid model when the JSON number is regarded as a double',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });

  group('to Json', () {
    test('should return a json map containing proper data', () async {
      //act
      final result = tNumberTriviaModel.toJson();
      //assert
      final expectedMap = {
        "text": "test text",
        "number": 1,
      };
      expect(result, expectedMap);
    });
  });
}
