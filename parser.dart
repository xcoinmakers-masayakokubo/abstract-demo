import 'case/rule.dart';

class Parser {
  final Rule instance;
  final List<String> words;

  Parser({
    required this.instance,
    required this.words,
  });

  void introduceMe() {
    this.instance.introduceMe();
  }

  void display() {
    print(this.exec());
  }

  String exec() {
    return instance.parse(this.words);
  }
}
