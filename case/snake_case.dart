import 'rule.dart';

class SnakeCase extends Rule {
  @override
  String parse(List<String> words) {
    String s = '';

    words.asMap().forEach((i, e) {
      if (i == 0) {
        s += e;
      } else {
        s += '_' + e;
      }
    });
    return s;
  }
}
