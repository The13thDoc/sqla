import 'sqla-parser.dart';

class TestSqlaParser {
  SqlaParser parser = new SqlaParser();

  readFile() {
    print('readFile()');
    parser.readFile('test-sqla.sqla');
    print('readFile() Done.');
  }

  parseSqla() {
    print('parseSqla()');
    parser.parseSqla();
    print('parseSqla() Done.');
  }

  printFromList() {
    print('printFromList()');
    print(parser.printFromList());
    print('printFromList() Done.');
  }

  printSelectList() {
    print('printSelectList()');
    print(parser.printSelectList());
    print('printSelectList() Done.');
  }

  printFileContents() {
    print('printFileContents()');
    print(parser.printFileContents());
    print('printFileContents() Done.');
  }
}
