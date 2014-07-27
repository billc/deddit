import 'package:deddit/deddit.dart';

void main() {

  Deddit.get('dartlang').then((List<Item> news) {
    for (Item item in news) {
      print(item);
      print("\n");
    }
  });
}