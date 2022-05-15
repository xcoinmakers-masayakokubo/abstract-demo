import 'dart:io';

import 'color.dart';
import 'e.dart';
import 'parser.dart';

void main() async {
  final String input;
  final int parserNumber;
  final Parser parser;

  print('${STDO_GREEN}Please enter words separated by spaces${STDO_END}');
  input = await stdin.readLineSync() as String;

  print('${STDO_GREEN}Which parser do you use?${STDO_END}');
  RuleType.values.forEach(
    (e) => print('${STDO_GREEN}${(e.index + 1).toString()}.${e.name}${STDO_END}'),
  );

  parserNumber = int.parse(await stdin.readLineSync() as String) - 1;

  parser = Parser(
    instance: RuleType.values.elementAt(parserNumber).instance,
    words: input.split(' '),
  );
  parser.introduceMe();
  parser.display();
}
