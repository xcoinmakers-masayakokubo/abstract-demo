import 'rule.dart';

class KebabCase extends Rule {
  @override
  String parse(List<String> words) {
    String s = '';

    words.asMap().forEach((i, e) {
      if (i == 0) {
        s += e;
      } else {
        s += '-' + e;
      }
    });
    return s;
  }
}
