import 'case/rule.dart';
import 'color.dart';

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
	print('${STDO_GREEN}Output : ${exec()}${STDO_END}');
  }

  String exec() {
    return instance.parse(words);
  }
}
