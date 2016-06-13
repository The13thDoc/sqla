import 'mainTest.dart';

/// Start application.
void main() {
  print('Start...');

  new MainTest()
    ..createTable()
    ..insertData()
    ..printTableInfo()
    ..printTable()
    ;

  print('Done.');
}
