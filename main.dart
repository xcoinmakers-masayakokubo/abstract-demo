import 'dart:io';

import 'case/rule.dart';
import 'case/snake_case.dart';
import 'parser.dart';

void main() async {
  final String input;
  final int parserNumber;
  final Parser parser;
  final Rule rule;

  print('Please enter words separated by spaces');
  input = await stdin.readLineSync() as String;

  print('Which parser do you use?');
  print('1 or 2 or 3');
  parserNumber = int.parse(await stdin.readLineSync() as String);

  rule = SnakeCase();
  parser = Parser(
    instance: rule,
  );
  print(
    parser.exec(input.split(' ')),
  );
}
