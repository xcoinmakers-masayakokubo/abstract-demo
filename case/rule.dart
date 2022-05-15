import '../color.dart';

abstract class Rule {
  void introduceMe() {
    print('${STDO_GREEN}You selected ${this.toString()}${STDO_END}');
  }

  String parse(List<String> words);
}
