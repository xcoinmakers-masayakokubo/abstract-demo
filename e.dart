import 'case/kebab_case.dart';
import 'case/lower_camel_case.dart';
import 'case/rule.dart';
import 'case/snake_case.dart';

enum RuleType {
  snake,
  lower,
  kebab,
}

extension RuleTypeExt on RuleType {
  String get name {
    switch (this) {
      case RuleType.snake:
        return 'snake_case';
      case RuleType.lower:
        return 'lowerCamelCase';
      case RuleType.kebab:
        return 'kebab-case';
    }
  }

  Rule get instance {
    switch (this) {
      case RuleType.snake:
        return SnakeCase();
      case RuleType.lower:
        return LowerCamelCase();
      case RuleType.kebab:
        return KebabCase();
    }
  }
}
