import 'mainTest.dart';
import 'testSqlaParser.dart';

/// Start application.
void main() {
  print('main()');

  new MainTest()
    // ..createTable()
    // ..insertData()
    // ..printTableInfo()
    // ..printTable()
    ;

  new TestSqlaParser()
  ..readFile()
  // ..printFileContents()
  ..parseSqla()
  ..printFromList()
  ..printSelectList()
  ;

  print('main() Done.');
}
