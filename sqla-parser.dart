import 'dart:io';

class SqlaParser {
  String file;
  String sql;
  List fromList = new List();
  List selectList = new List();

  /// Get the sqla file.
  readFile(String path) {
    File sqla = new File(path);
    this.file = sqla.readAsStringSync().toLowerCase();
  }

  /// Convert the sqla to sql.
  String toSql(String sqla) {
    // todo
    return "";
  }

  /// Read the data and parse out the sqla.
  parseSqla() {
    // Extract FROM statement.
    if (this.file.contains('from')) {
      this.fromList = extract('from');
    }

    // Extract SELECT statement.
    if (this.file.contains('select')) {
      this.selectList = extract('select');
    }
  }

  /// Extract the contents of the pattern.
  List extract(String pattern) {
    num index = this.file.indexOf(pattern) + pattern.length;
    num indexStartBracket = this.file.indexOf("{", index) + 1;
    num indexEndBracket = this.file.indexOf("}", indexStartBracket);
    String contents = this.file.substring(indexStartBracket, indexEndBracket);

    List contentsList = new List();

    for (String c in contents.split("\n")) {
      if (c.trim().isNotEmpty) {
        contentsList.add(c.trim());
      }
    }
    return contentsList;
  }

  /// Return the FROM list as a string.
  String printFromList() {
    StringBuffer string = new StringBuffer("FROM ");
    string.writeln(printList(this.fromList));
    return string.toString();
  }

  /// Return the SELECT list as a string.
  String printSelectList() {
    StringBuffer string = new StringBuffer("SELECT ");
    string.writeln(printList(this.selectList));
    return string.toString();
  }

  String printList(List list) {
    StringBuffer string = new StringBuffer("(${list.length})\n");
    for (String i in list) {
      string.writeln(i);
    }
    return string.toString().trim();
  }

  /// Return the file contents as a string.
  String printFileContents() {
    return this.file;
  }
}
