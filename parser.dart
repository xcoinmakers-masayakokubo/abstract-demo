import 'case/rule.dart';

class Parser {
  final Rule instance;

  Parser({
    required this.instance,
  });

  String exec(List<String> words) {
    return instance.parse(words);
  }
}
