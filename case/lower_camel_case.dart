import 'rule.dart';

class LowerCamelCase extends Rule {
  @override
  String parse(List<String> words) {
    String s = '';

    words.asMap().forEach((i, e) {
      if (i == 0) {
        s += e;
      } else {
        s += e[0].toUpperCase() + e.substring(1).toLowerCase();
      }
    });
    return s;
  }
}
